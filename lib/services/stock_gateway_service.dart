import 'dart:async';
import 'package:demo_login/model/dto/response_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
part 'stock_gateway_service.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class StockGatewaySerivce {
  factory StockGatewaySerivce(Dio dio, {String baseUrl}) = _StockGatewaySerivce;
  @POST('/sg/api/gateway/v1/{controller}')
  Future<ResponseDto<T>> postAsync<T>(
      @Path('controller') String controller, @Body() Map<String, dynamic> body);
  @GET('/sg/api/gateway/v1/{controller}')
  Future<ResponseDto<T>> getAsync<T>(
      @Path('controller') String controller, @Queries() Map<String, dynamic> queries);
}
