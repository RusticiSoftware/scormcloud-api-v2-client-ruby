# RusticiSoftwareCloudV2::PingApi

All URIs are relative to *https://cloud.scorm.com/api/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping_app_id**](PingApi.md#ping_app_id) | **GET** /ping | Get back a message indicating that the API is working.


# **ping_app_id**
> PingSchema ping_app_id

Get back a message indicating that the API is working.

### Example
```ruby
# load the gem
require 'rustici_software_cloud_v2'
# setup authorization
RusticiSoftwareCloudV2.configure do |config|
  # Configure HTTP basic authorization: APP_NORMAL
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAUTH
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RusticiSoftwareCloudV2::PingApi.new

begin
  #Get back a message indicating that the API is working.
  result = api_instance.ping_app_id
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling PingApi->ping_app_id: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PingSchema**](PingSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



