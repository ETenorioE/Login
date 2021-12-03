package com.example.login;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

public interface LoginService {

    @POST("controllers/usuariomovil?op=GetId")
    Call<List<LoginResponse>> userLogin(@Body LoginRequest loginRequest);
}
