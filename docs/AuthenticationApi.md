# RusticiSoftwareCloudV2::AuthenticationApi

All URIs are relative to *https://dev.cloud.scorm.com/api/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_app_token**](AuthenticationApi.md#get_app_token) | **POST** /oauth/authenticate/application/token | Authenticates for a oauth token


# **get_app_token**
> ApplicationToken get_app_token(scope, opts)

Authenticates for a oauth token

### Example
```ruby
# load the gem
require 'rustici_software_cloud_v2'
# setup authorization
RusticiSoftwareCloudV2.configure do |config|
  # Configure HTTP basic authorization: APP_NORMAL
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RusticiSoftwareCloudV2::AuthenticationApi.new

scope = "scope_example" # String | 

opts = { 
  expiration: 300 # Integer | 
}

begin
  #Authenticates for a oauth token
  result = api_instance.get_app_token(scope, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling AuthenticationApi->get_app_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**|  | 
 **expiration** | **Integer**|  | [optional] [default to 300]

### Return type

[**ApplicationToken**](ApplicationToken.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



