package com.android.example.sunshinetests.test;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

/**
 * Created by Elorri on 10/07/2016.
 */
@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/assets/features")
public class JunitCucumberRunner {
}
