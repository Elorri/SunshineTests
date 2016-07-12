package com.android.example.sunshinetests.test;

import com.android.example.sunshinetests.data.SunshineProvider;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by Elorri on 10/07/2016.
 */


public class SunshineTests {

    private Helper helper;

    public SunshineTests() {
        helper = new Helper();
    }


    @Given("^Today date in millis is (\\d+)$")
    public void todayDateInMillisIs(long today) throws Throwable {
        assertEquals(helper.getToday(), today);
    }

    @And("^I have a table location with data$")
    public void iHaveATableLocationWithData(DataTable expectedTable) throws Throwable {
        expectedTable.diff(helper.getLocationTable());
    }

    @And("^I have a table weather with data$")
    public void iHaveATableWeatherWithData(DataTable expectedTable) throws Throwable {
        expectedTable.diff(helper.getWeatherTable());
    }


    @And("^I have a ContentProvider$")
    public void iHaveAContentProvider() throws Throwable {
        assertNotNull(helper.getSunshineProvider());
    }


    @When("^I query ContentProvider with an uri of type (\\d+)$")
    public void iQueryContentProviderWithAnUriOfType(int WEATHER_WITH_LOCATION) throws Throwable {
        assertEquals(SunshineProvider.buildUriMatcher().match(helper.getWeatherLocationUri()), WEATHER_WITH_LOCATION);

    }

    @Then("^I should get a cursor like this$")
    public void iShouldGetACursorLikeThis(DataTable expectedTable) throws Throwable {
        expectedTable.diff(helper.getWeatherWithLocationCursor());
    }



}
