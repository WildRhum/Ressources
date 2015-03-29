package Parser;


import java.util.ArrayList;

/**
 * Created by legeek on 23/03/15.
 */
public class Style {
    private final static String[] list = {
            "Abbey Tripel" ,
            "Abt/Quadrupel" ,
            "Altbier" ,
            "Amber Ale" ,
            "Amber Lager/Vienna" ,
            "American Pale Ale" ,
            "American Strong Ale " ,
            "Baltic Porter" ,
            "Barley Wine" ,
            "Belgian Ale" ,
            "Belgian Strong Ale" ,
            "Belgian White (Witbier)" ,
            "Berliner Weisse" ,
            "Bière de Garde" ,
            "Bitter" ,
            "Black IPA" ,
            "Brown Ale" ,
            "California Common" ,
            "Cider" ,
            "Cream Ale" ,
            "Czech Pilsner (Sv&#283;tlý)" ,
            "Doppelbock" ,
            "Dortmunder/Helles" ,
            "Dry Stout" ,
            "Dunkel/Tmavý" ,
            "Dunkelweizen" ,
            "Dunkler Bock" ,
            "Eisbock" ,
            "English Pale Ale" ,
            "English Strong Ale" ,
            "Foreign Stout" ,
            "Fruit Beer/Radler" ,
            "German Hefeweizen" ,
            "German Kristallweizen" ,
            "Golden Ale/Blond Ale" ,
            "Grodziskie/Gose/Lichtenhainer" ,
            "Heller Bock" ,
            "Ice Cider/Ice Perry" ,
            "Imperial Stout" ,
            "Imperial/Double IPA" ,
            "Imperial/Strong Porter" ,
            "India Pale Ale (IPA)" ,
            "Irish Ale" ,
            "Kölsch" ,
            "Lambic Style - Faro" ,
            "Lambic Style - Fruit" ,
            "Lambic Style - Gueuze" ,
            "Lambic Style - Unblended" ,
            "Low Alcohol" ,
            "Malt Liquor" ,
            "Mead" ,
            "Mild Ale" ,
            "Oktoberfest/Märzen" ,
            "Old Ale" ,
            "Pale Lager" ,
            "Perry" ,
            "Pilsener" ,
            "Polotmavý" ,
            "Porter" ,
            "Premium Bitter/ESB" ,
            "Premium Lager" ,
            "Sahti/Gotlandsdricke/Koduõlu" ,
            "Saison" ,
            "Saké - Daiginjo" ,
            "Saké - Futsu-shu" ,
            "Saké - Genshu" ,
            "Saké - Ginjo" ,
            "Saké - Honjozo" ,
            "Saké - Infused" ,
            "Saké - Junmai" ,
            "Saké - Koshu" ,
            "Saké - Namasaké" ,
            "Saké - Nigori" ,
            "Saké - Taru" ,
            "Saké - Tokubetsu" ,
            "Schwarzbier" ,
            "Scotch Ale" ,
            "Scottish Ale" ,
            "Session IPA" ,
            "Smoked" ,
            "Sour Red/Brown" ,
            "Sour/Wild Ale" ,
            "Specialty Grain" ,
            "Spice/Herb/Vegetable" ,
            "Stout" ,
            "Strong Pale Lager/Imperial Pils" ,
            "Sweet Stout" ,
            "Traditional Ale" ,
            "Weizen Bock" ,
            "Wheat Ale" ,
            "Zwickel/Keller/Landbier" };

    public static int getIdFromLibelle( String v ) {
        for( int i = 0; i < list.length; ++i ){
            if( list[i].equalsIgnoreCase( v ) ){
                return i+1;
            }
        }

        return 0;
    }
}
