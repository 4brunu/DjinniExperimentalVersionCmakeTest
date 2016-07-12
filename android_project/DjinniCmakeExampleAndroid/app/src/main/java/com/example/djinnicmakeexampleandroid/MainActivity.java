package com.example.djinnicmakeexampleandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import com.example.djinnicmakeexample.HelloWorld;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("djinnicmakeexample");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView textView = (TextView) findViewById(R.id.textView);

        HelloWorld helloWorld = HelloWorld.create();

        String stringHello = helloWorld.getHelloString();

        textView.setText(stringHello);


    }

}
