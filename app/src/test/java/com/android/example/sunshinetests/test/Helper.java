package com.android.example.sunshinetests.test;

import android.content.ContentProvider;
import android.net.Uri;

import java.util.Arrays;
import java.util.List;

import cucumber.api.DataTable;

/**
 * Created by Elorri on 12/07/2016.
 */
public class Helper {
    private final long today = 1468188000000l;


    public long getToday() {
        return today;
    }

    public DataTable getLocationTable() {
        List<List<String>> data = Arrays.asList(
                Arrays.asList("_id", "location_setting", "city_name", "coord_lat", "coord_long"),
                Arrays.asList("1", "94043", "Mountain View", "37.386051", "-122.083847"));
        return DataTable.create(data);
    }

    public DataTable getWeatherTable() {
        List<List<String>> data = Arrays.asList(
                Arrays.asList("_id", "location_id", "date", "short_desc", "icon_id", "min", "max", "humidity", "pressure", "wind", "degrees"),
                Arrays.asList("1", "1", "1468188000000", "Clear", "800", "12.99", "12.99", "98", "989.07", "0.22", "136"),
                Arrays.asList("2", "1", "1468274400000", "Clear", "800", "12.98", "31.06", "57", "988.58", "1.42", "263"),
                Arrays.asList("3", "1", "1468360800000", "Clear", "800", "10.42", "27.83", "57", "990.42", "1.32", "248"),
                Arrays.asList("4", "1", "1468447200000", "Clear", "800", "11.01", "29.44", "56", "989.72", "1.5", "280"),
                Arrays.asList("5", "1", "1468533600000", "Clear", "800", "10.63", "30.23", "52", "988.83", "1.43", "221"),
                Arrays.asList("6", "1", "1468620000000", "Clear", "800", "10.78", "22.17", "0", "1003.98", "1.28", "243"),
                Arrays.asList("7", "1", "1468706400000", "Clear", "800", "11.13", "21.82", "0", "1003.04", "1.83", "274"),
                Arrays.asList("8", "1", "1468792800000", "Clear", "800", "11.38", "22.42", "0", "1003.62", "2.95", "314"),
                Arrays.asList("9", "1", "1468879200000", "Clear", "800", "12.22", "21.52", "0", "1004.65", "3.42", "312"),
                Arrays.asList("10", "1", "1468965600000", "Clear", "800", "11.4", "19.68", "0", "1006.8", "4.34", "317"),
                Arrays.asList("11", "1", "1469052000000", "Rain", "500", "10.54", "24.39", "0", "1008.05", "1.37", "357"),
                Arrays.asList("12", "1", "1469138400000", "Rain", "500", "15.67", "25.31", "0", "1009.31", "1.17", "337"),
                Arrays.asList("13", "1", "1469224800000", "Clear", "800", "16.96", "25.93", "0", "1011.36", "1.55", "292"),
                Arrays.asList("14", "1", "1469311200000", "Clear", "800", "16.26", "25.01", "0", "1012.33", "1.66", "270"));
        return DataTable.create(data);
    }



    public Uri getWeatherLocationUri() {
        return null;
    }

    public ContentProvider getSunshineProvider() {
        return null;
    }

    public DataTable getWeatherWithLocationCursor() {

        return null;
    }
}
