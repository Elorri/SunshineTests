package com.android.example.sunshinetests.test; /**
 * Created by Elorri on 10/07/2016.
 */

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;

public class MyStepdefs {

    @Test
    @Given("^I have a test$")
    public void iHaveATest() throws Throwable {
        assertEquals(4, 2 + 2);
        // Write code here that turns the phrase above into concrete actions
        //throw new cucumber.api.PendingException();
    }


    @When("^I test it$")
    public void iTestIt() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
