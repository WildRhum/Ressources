<?php
  error_reporting(E_ALL);
  ini_set('error_reporting', E_ALL);

  /*
   * -= WebApp 20k bière =-
   *
   * $_GET['action'] :
   *  STYLE :
   *   0. getStyleById  $p1
   *   1. getAllStyle   .
   *
   *  BEER :
   *   10. getBeerById            $p1
   *   11. searchBeerByName       $p1
   *   12. searchBeerByStyle      $p1
   *   13. searchBeerByBrewers    $p1
   *
   *  USER :
   *   20. getUserById  $p1
   *   21. connectUser  $p1 (user) $p2 (pwd)
   *
   *  rate :
   *   30. getUserRatedBeer $p1 (user)
   *
   *
   *
   *   FORMAT REPONSE :
   *    JSON minimal :
   *    {
   *      code : ( 0 | 1 | 2 | ... ),  //0 = succes
   *      msgError : "str",
   *      data : { ... }
   *    }
   *    
   */


  $pdo = null;

  function generateJsonError( $code, $msg )
  {
    echo "{ \"code\":" . $code . ", \"msgError\":\"" . $msg . "\", \"data\":{} }";
    exit( 0 );
  }

  function generateJsonData( $data )
  {
    echo "{ \"code\":0, \"msgError\":\"\", \"data\": " . json_encode( $data )  . " }";
  }

  function getAction()
  {
    if( isset( $_GET['action'] ) )
      return $_GET['action'];
    else
      return -1;
  }

  function getP1()
  {
    if( isset( $_GET['p1'] ) )
    {
      return $_GET['p1'];
    }

    generateJsonError( -1, "[WebApp] No param. P1" );
  }

  function getP2()
  {
    if( isset( $_GET['p2'] ) )
    {
      return $_GET['p2'];
    }

    generateJsonError( -1, "[WebApp] No param. P2" );
  }

  function sendRequest( $req )
  {
    global $pdo;

    try
    {
      $sth = $pdo->prepare( $req );
    }
    catch( PDOException $e )
    {
      generateJsonError( $e->getCode(), $e->getMessage() );
    }

    if( $sth->execute() == FALSE )
    {
      $e = $sth->errorInfo();
      generateJsonError( $e[1], $e[2] );
      exit( 0 );
    }

    return $sth->fetchAll();
  }
  

  try 
  {
    $pdo = new PDO( 'mysql:dbname=20kbieres;host=127.0.0.1', 'root', 'toor' );
  }
  catch( PDOException $e )
  {
    generateJsonError( $e->getCode(), "[DB] Failed to connect : " . $e->getMessage() );
    exit( 0 );
  }

  $req = "";
  switch( getAction() )
  {
    /* ===== STYLE ===== */
    case 0:
      $req = "SELECT text_style FROM STYLE WHERE ID_style=" . getP1();
      break;

    case 1:
      $req = "SELECT * FROM STYLE ORDER BY ID_style ASC";
      break;

    /* ===== BEER ===== */
    case 10:
      $req = "SELECT * FROM BEER WHERE ID_beer=" . getP1();
      break;

    case 11:
      $req = "SELECT * FROM BEER WHERE name_beer LIKE '%" . getP1() . "%'";
      break;

    case 12:
      $req = "SELECT * FROM BEER WHERE style_beer=" . getP1();
      break;

    case 13:
      $req = "SELECT * FROM BEER WHERE brewers_beer LIKE '%" . getP1() . "%'";
      break;

    /* ===== USER ===== */
    case 20:
      $req = "SELECT * FROM USER WHERE ID_user=" . getP1();
      break;

    case 21:
      $req = "SELECT COUNT(*) FROM USER WHERE email_user='" . getP1() . "' AND pwd_user='" . getP2() . "'";
      break;

    /* ===== RATE ===== */
    case 30:
      $req = "SELECT * FROM rate WHERE ID_user_rate=" . getP1();
      break;

    default:
      generateJsonError( -1, "[WebApp] Unknown action '" . getAction() . "'" );
      exit( 0 );
      break;
  }
  
  generateJsonData( sendRequest( $req ) );
?>
