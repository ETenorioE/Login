package com.example.login;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;


public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button numberBtn = findViewById(R.id.buttonIngresar);
        TextView dni = findViewById(R.id.inputdni);

        numberBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(TextUtils.isEmpty(dni.getText())){
                    Toast.makeText(MainActivity.this, "Requerido", Toast.LENGTH_SHORT).show();
                }else{
                    LoginRequest loginRequest = new LoginRequest();
                    loginRequest.setUser_dni(dni.getText().toString());
                    Call<List<LoginResponse>> loginResponseCall = ApiClient.getLoginService().userLogin(loginRequest);
                    loginResponseCall.enqueue(new Callback<List<LoginResponse>>() {
                        @Override
                        public void onResponse(Call<List<LoginResponse>> call, Response<List<LoginResponse>> response) {
                            List<LoginResponse> posts = response.body();
                            if (posts.isEmpty()) {
                                Toast.makeText(MainActivity.this, "DNI NO ENCONTRADO", Toast.LENGTH_LONG).show();
                            } else {
                                if (response.isSuccessful()) {
                                    Toast.makeText(MainActivity.this, "Login exitoso", Toast.LENGTH_LONG).show();
                                    Intent intent = new Intent(MainActivity.this, activity_welcome.class);
                                    intent.setFlags(Intent.FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS);
                                    startActivity(intent);
                                } else {
                                    Toast.makeText(MainActivity.this, "ERROR", Toast.LENGTH_LONG).show();
                                }
                            }
                        }

                        @Override
                        public void onFailure(Call<List<LoginResponse>> call, Throwable t) {
                            Toast.makeText(MainActivity.this, "ERROR" + t.getLocalizedMessage(), Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }
        });

    }

}