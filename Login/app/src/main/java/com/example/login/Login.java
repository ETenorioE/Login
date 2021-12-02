package com.example.login;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface Login {
    //https://reporte.sba.org.pe/controllers/usuariomovil?op=GetId&user_dni=76816993
    //https://reporte.sba.org.pe/controllers/usuariomovil?op=GetId&user_dni=76816993
    @GET("usuariomovil.php")
    Call<Login> getLogin(@Query("op") String op, @Query("user_dni") String dni);
}
