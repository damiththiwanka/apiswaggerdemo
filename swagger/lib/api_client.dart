// @dart=2.9
part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://www.example.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AssignUserRoleRequest':
          return new AssignUserRoleRequest.fromJson(value);
        case 'AvatarUpdateRequest':
          return new AvatarUpdateRequest.fromJson(value);
        case 'ChargingStationSchemaModel':
          return new ChargingStationSchemaModel.fromJson(value);
        case 'CollectionBuilderModel':
          return new CollectionBuilderModel.fromJson(value);
        case 'ComponentMappingModel':
          return new ComponentMappingModel.fromJson(value);
        case 'ComponentType':
          return new ComponentType.fromJson(value);
        // case 'CountryCodes':
        //    return new CountryCodes.fromJson(value);
        case 'CreateNewUserRequest':
          return new CreateNewUserRequest.fromJson(value);
        case 'CreateRoleRequest':
          return new CreateRoleRequest.fromJson(value);
        case 'DeclineUserRoleRequest':
          return new DeclineUserRoleRequest.fromJson(value);
        case 'DeleteUserRequest':
          return new DeleteUserRequest.fromJson(value);
        case 'EVSEType':
          return new EVSEType.fromJson(value);
        case 'GetVariableDataType':
          return new GetVariableDataType.fromJson(value);
        case 'HTTPValidationError':
          return new HTTPValidationError.fromJson(value);
        case 'IForgetRequest':
          return new IForgetRequest.fromJson(value);
        case 'NewManufacture':
          return new NewManufacture.fromJson(value);
        case 'NewVehicle':
          return new NewVehicle.fromJson(value);
        case 'NewVehicleModel':
          return new NewVehicleModel.fromJson(value);
        case 'OTPRequest':
          return new OTPRequest.fromJson(value);
        case 'ObjectBuilderModel':
          return new ObjectBuilderModel.fromJson(value);
        case 'PasswordChange':
          return new PasswordChange.fromJson(value);
        case 'PasswordReset':
          return new PasswordReset.fromJson(value);
        case 'PasswordResetTokenRequest':
          return new PasswordResetTokenRequest.fromJson(value);
        case 'ProcessBuilderModel':
          return new ProcessBuilderModel.fromJson(value);
        case 'ProtocolBuilderModel':
          return new ProtocolBuilderModel.fromJson(value);
        case 'ProtocolMapperModel':
          return new ProtocolMapperModel.fromJson(value);
        case 'RegisterChargingStation':
          return new RegisterChargingStation.fromJson(value);
        case 'SchemaBuilderModel':
          return new SchemaBuilderModel.fromJson(value);
        case 'SchemaItem':
          return new SchemaItem.fromJson(value);
        case 'ScriptBuilderModel':
          return new ScriptBuilderModel.fromJson(value);
        case 'ScriptExecutorModel':
          return new ScriptExecutorModel.fromJson(value);
        case 'SetPasswordRequest':
          return new SetPasswordRequest.fromJson(value);
        case 'UpdateAnotherUserRequest':
          return new UpdateAnotherUserRequest.fromJson(value);
        case 'UpdateUserRequest':
          return new UpdateUserRequest.fromJson(value);
        case 'UpdateUserVehicle':
          return new UpdateUserVehicle.fromJson(value);
        case 'UserActivationRequest':
          return new UserActivationRequest.fromJson(value);
        case 'UserLoginRequest':
          return new UserLoginRequest.fromJson(value);
        case 'UserRegisterRequest':
          return new UserRegisterRequest.fromJson(value);
        case 'UserRoleAssignment':
          return new UserRoleAssignment.fromJson(value);
        case 'ValidationError':
          return new ValidationError.fromJson(value);
        case 'VariableType':
          return new VariableType.fromJson(value);
        case 'VisitRequest':
          return new VisitRequest.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) =>
        '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = "";

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url),
              headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
