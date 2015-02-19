package Main;

import Parser.Parser;

import java.io.File;
import java.io.IOException;

/**
 * Created by legeek on 18/02/15.
 */
public class Main {
    public static void main(String[] args) throws IOException {
        if( args.length != 1){
            System.err.println( "Usage : http/https or file" );
            System.exit( 1 );
        }

        Parser p;
        if( args[0].startsWith( "http" ) || args[0].startsWith( "https" ) ){
            p = new Parser( args[0] );
        }
        else{
            p = new Parser( new File( args[0] ) );
        }

        System.out.println( p.toString() );
    }
}
