# RusticiSoftwareCloudV2::ApplicationManagementApi

All URIs are relative to *https://cloud.scorm.com/api/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_application**](ApplicationManagementApi.md#create_application) | **PUT** /appManagement/applications/{applicationName} | Create a new application
[**create_credential**](ApplicationManagementApi.md#create_credential) | **POST** /appManagement/{childAppId}/credentials | Create credential
[**create_token**](ApplicationManagementApi.md#create_token) | **POST** /appManagement/token | Create token
[**delete_application**](ApplicationManagementApi.md#delete_application) | **DELETE** /appManagement/applications/{childAppId} | Delete an application.  If the application contains content, it must first be manually removed before calling this method, else an error will be thrown.
[**delete_credential**](ApplicationManagementApi.md#delete_credential) | **DELETE** /appManagement/{childAppId}/credentials/{credentialId} | Removes &#x60;credentialId&#x60; credentials
[**get_application_configuration**](ApplicationManagementApi.md#get_application_configuration) | **GET** /appManagement/configuration | Returns all configuration settings for this level
[**get_application_list**](ApplicationManagementApi.md#get_application_list) | **GET** /appManagement/applications | Get list of all applications in this realm.
[**get_credentials**](ApplicationManagementApi.md#get_credentials) | **GET** /appManagement/{childAppId}/credentials | List of credentials
[**set_application_configuration**](ApplicationManagementApi.md#set_application_configuration) | **POST** /appManagement/configuration | Set configuration settings for this level.
[**update_credential**](ApplicationManagementApi.md#update_credential) | **PUT** /appManagement/{childAppId}/credentials/{credentialId} | Update the name or status associated with &#x60;credentialId&#x60;


# **create_application**
> ApplicationSchema create_application(application_name)

Create a new application

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

application_name = 'application_name_example' # String | 


begin
  #Create a new application
  result = api_instance.create_application(application_name)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->create_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_name** | **String**|  | 

### Return type

[**ApplicationSchema**](ApplicationSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_credential**
> CredentialCreatedSchema create_credential(child_app_id, credential_request)

Create credential

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

child_app_id = 'child_app_id_example' # String | 

credential_request = RusticiSoftwareCloudV2::CredentialRequestSchema.new # CredentialRequestSchema | 


begin
  #Create credential
  result = api_instance.create_credential(child_app_id, credential_request)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->create_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_app_id** | **String**|  | 
 **credential_request** | [**CredentialRequestSchema**](CredentialRequestSchema.md)|  | 

### Return type

[**CredentialCreatedSchema**](CredentialCreatedSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_token**
> StringResultSchema create_token(token_request)

Create token

Creates, signs and returns a token based on the provided permissions, if the credentials used to request the token have the permissions being requested. Note: the token is not stored and therefore can not be modified or deleted. The requested permissions are encoded in the token which is then signed. As long as the secret used to create it is not changed the token will be valid until it expires.

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

token_request = RusticiSoftwareCloudV2::TokenRequestSchema.new # TokenRequestSchema | 


begin
  #Create token
  result = api_instance.create_token(token_request)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->create_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_request** | [**TokenRequestSchema**](TokenRequestSchema.md)|  | 

### Return type

[**StringResultSchema**](StringResultSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_application**
> delete_application(child_app_id, )

Delete an application.  If the application contains content, it must first be manually removed before calling this method, else an error will be thrown.

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

child_app_id = 'child_app_id_example' # String | 


begin
  #Delete an application.  If the application contains content, it must first be manually removed before calling this method, else an error will be thrown.
  api_instance.delete_application(child_app_id, )
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->delete_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_app_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_credential**
> delete_credential(child_app_id, credential_id)

Removes `credentialId` credentials

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

child_app_id = 'child_app_id_example' # String | 

credential_id = 'credential_id_example' # String | 


begin
  #Removes `credentialId` credentials
  api_instance.delete_credential(child_app_id, credential_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->delete_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_app_id** | **String**|  | 
 **credential_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_application_configuration**
> SettingListSchema get_application_configuration(opts)

Returns all configuration settings for this level

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

opts = { 
  learning_standard: 'learning_standard_example', # String | If specified, the request will be scoped to the provided learning standard.
  single_sco: true # BOOLEAN | Required if learningStandard is specified. Scopes settings to whether a package has only one SCO or assignable unit within it or not. To apply a configuration setting to a learning standard for single and multi-SCO content, it must be set for both scopes.
  include_metadata: false # BOOLEAN | 
}

begin
  #Returns all configuration settings for this level
  result = api_instance.get_application_configuration(opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->get_application_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **learning_standard** | **String**| If specified, the request will be scoped to the provided learning standard. | [optional] 
 **single_sco** | **BOOLEAN**| Required if learningStandard is specified. Scopes settings to whether a package has only one SCO or assignable unit within it or not. To apply a configuration setting to a learning standard for single and multi-SCO content, it must be set for both scopes. | [optional] 
 **include_metadata** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**SettingListSchema**](SettingListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_application_list**
> ApplicationListSchema get_application_list

Get list of all applications in this realm.

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

begin
  #Get list of all applications in this realm.
  result = api_instance.get_application_list
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->get_application_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplicationListSchema**](ApplicationListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_credentials**
> CredentialListSchema get_credentials(child_app_id, )

List of credentials

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

child_app_id = 'child_app_id_example' # String | 


begin
  #List of credentials
  result = api_instance.get_credentials(child_app_id, )
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->get_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_app_id** | **String**|  | 

### Return type

[**CredentialListSchema**](CredentialListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_application_configuration**
> set_application_configuration(configuration_settings, opts)

Set configuration settings for this level.

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

configuration_settings = RusticiSoftwareCloudV2::SettingsPostSchema.new # SettingsPostSchema | 

opts = { 
  learning_standard: 'learning_standard_example', # String | If specified, the request will be scoped to the provided learning standard.
  single_sco: true # BOOLEAN | Required if learningStandard is specified. Scopes settings to whether a package has only one SCO or assignable unit within it or not. To apply a configuration setting to a learning standard for single and multi-SCO content, it must be set for both scopes.
}

begin
  #Set configuration settings for this level.
  api_instance.set_application_configuration(configuration_settings, opts)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->set_application_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_settings** | [**SettingsPostSchema**](SettingsPostSchema.md)|  | 
 **learning_standard** | **String**| If specified, the request will be scoped to the provided learning standard. | [optional] 
 **single_sco** | **BOOLEAN**| Required if learningStandard is specified. Scopes settings to whether a package has only one SCO or assignable unit within it or not. To apply a configuration setting to a learning standard for single and multi-SCO content, it must be set for both scopes. | [optional] 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_credential**
> update_credential(child_app_id, credential_idcredential_update)

Update the name or status associated with `credentialId`

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

api_instance = RusticiSoftwareCloudV2::ApplicationManagementApi.new

child_app_id = 'child_app_id_example' # String | 

credential_id = 'credential_id_example' # String | 

credential_update = RusticiSoftwareCloudV2::CredentialRequestSchema.new # CredentialRequestSchema | 


begin
  #Update the name or status associated with `credentialId`
  api_instance.update_credential(child_app_id, credential_idcredential_update)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling ApplicationManagementApi->update_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_app_id** | **String**|  | 
 **credential_id** | **String**|  | 
 **credential_update** | [**CredentialRequestSchema**](CredentialRequestSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



