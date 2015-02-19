package Parser;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.IOException;

/**
 * Created by legeek on 18/02/15.
 */
public class Parser {
    private int overallScore;
    private int styleScore;
    private float abv;
    private String name;
    private String brewers;
    private String style;
    private String address;

    private Document document;

    public Parser( String url ) throws IOException {
        document = Jsoup.connect( url ).userAgent("Mozilla").get();
        extract();
    }

    public Parser( File file ) throws IOException {
        document = Jsoup.parse( file, null );

        extract();
    }

    private void extract()
    {
        extractOverallScore();
        extractStyleScore();
        extractABV();

        extractName();
        extractBrewers();
        extractStyle();
        extractAddress();
    }

    private void extractOverallScore(){
        Elements elem = document.select( "div[style*=background-color: #036] div span" );
        overallScore = Integer.parseInt( ((Element)elem.toArray()[1]).text() );
    }

    private void extractStyleScore(){
        Elements elem = document.select( "span[itemprop=\"average\"]" );
        styleScore = Integer.parseInt( elem.text() );
    }

    private void extractABV(){
        Elements elem = document.select( "abbr[title=\"Alcohol By Volume\"] + big" );
        abv = Float.parseFloat( elem.text().substring( 0, elem.text().indexOf( "%" ) ) );
    }

    private void extractName(){
        Elements elem = document.select( "h1[itemprop=\"itemreviewed\"]" );
        name = elem.text();
    }

    private void extractBrewers(){
        Elements elem = document.select( "a[href^=\"/brewers\"]" );
        brewers = elem.text();
    }

    private void extractStyle(){
        Elements elem = document.select( "a[href^=\"/beerstyles\"]" );
        style = elem.text();
    }

    private void extractAddress(){
        Elements city = document.select("a[href*=/Places/State/Cities]" );
        Elements state = document.select("a[href*=/places/states]" );
        Elements country = document.select("div[style=padding-bottom: 7px; line-height: 1.5;]" );
        address = ( city.text().isEmpty() ? "" : city.text() + " " ) +
                ( state.text().isEmpty() ? "" : state.text() + " " ) +
                country.first().childNodes().get( country.first().childNodeSize() - 1 ).toString().trim();
        address = address.trim();
    }

    public int getOverallScore() {
        return overallScore;
    }

    public int getStyleScore() {
        return styleScore;
    }

    public float getAbv() {
        return abv;
    }

    public String getName() {
        return name;
    }

    public String getBrewers() {
        return brewers;
    }

    public String getStyle() {
        return style;
    }

    public String getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return "{" +
                "overallScore=" + overallScore +
                ", styleScore=" + styleScore +
                ", abv=" + abv +
                ", name='" + name + '\'' +
                ", brewers='" + brewers + '\'' +
                ", style='" + style + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}