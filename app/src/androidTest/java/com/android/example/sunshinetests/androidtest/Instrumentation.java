package com.android.example.sunshinetests.androidtest;

import android.os.Bundle;
import android.support.test.runner.MonitoringInstrumentation;
import cucumber.api.android.CucumberInstrumentationCore;

public class Instrumentation extends MonitoringInstrumentation {

    private final CucumberInstrumentationCore instrumentationCore = new CucumberInstrumentationCore(this);

    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        instrumentationCore.create(bundle);
        start();
    }

    @Override
    public void onStart() {
        waitForIdleSync();
        instrumentationCore.start();
    }
}