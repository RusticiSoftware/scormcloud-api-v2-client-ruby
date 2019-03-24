# RusticiSoftwareCloudV2::RegistrationApi

All URIs are relative to *https://dev.cloud.scorm.com/api/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_registration_instance**](RegistrationApi.md#create_new_registration_instance) | **POST** /registrations/{registrationId}/instances | Create a new instance for this registration specified by the registration ID
[**create_registration**](RegistrationApi.md#create_registration) | **POST** /registrations | Create a registration.
[**delete_registration**](RegistrationApi.md#delete_registration) | **DELETE** /registrations/{registrationId} | Delete &#x60;registrationId&#x60;
[**delete_registration_configuration_setting**](RegistrationApi.md#delete_registration_configuration_setting) | **DELETE** /registrations/{registrationId}/configuration/{settingId} | Clears the &#x60;settingId&#x60; value for this registration
[**delete_registration_instance_configuration_setting**](RegistrationApi.md#delete_registration_instance_configuration_setting) | **DELETE** /registrations/{registrationId}/instances/{instanceId}/configuration/{settingId} | Clears the &#x60;settingId&#x60; value for this registration instance
[**delete_registration_progress**](RegistrationApi.md#delete_registration_progress) | **DELETE** /registrations/{registrationId}/progress | Delete registration progress (clear registration)
[**delete_registrations_global_data**](RegistrationApi.md#delete_registrations_global_data) | **DELETE** /registrations/{registrationId}/globalData | Delete global data associated with &#x60;registrationId&#x60;
[**get_registration_configuration**](RegistrationApi.md#get_registration_configuration) | **GET** /registrations/{registrationId}/configuration | Returns all configuration settings for this registration
[**get_registration_instance_configuration**](RegistrationApi.md#get_registration_instance_configuration) | **GET** /registrations/{registrationId}/instances/{instanceId}/configuration | Returns all configuration settings for this registration instance
[**get_registration_instance_launch_history**](RegistrationApi.md#get_registration_instance_launch_history) | **GET** /registrations/{registrationId}/instances/{instanceId}/launchHistory | Returns history of this registration&#39;s launches
[**get_registration_instance_progress**](RegistrationApi.md#get_registration_instance_progress) | **GET** /registrations/{registrationId}/instances/{instanceId} | Get registration progress for instance &#x60;instanceId&#x60; of &#x60;registrationId&#x60;
[**get_registration_instance_statements**](RegistrationApi.md#get_registration_instance_statements) | **GET** /registrations/{registrationId}/instances/{instanceId}/xAPIStatements | Get xAPI statements for instance &#x60;instanceId&#x60; of &#x60;registrationId&#x60;
[**get_registration_instances**](RegistrationApi.md#get_registration_instances) | **GET** /registrations/{registrationId}/instances | Get all the instances of this the registration specified by the registration ID
[**get_registration_launch_history**](RegistrationApi.md#get_registration_launch_history) | **GET** /registrations/{registrationId}/launchHistory | Returns history of this registration&#39;s launches
[**get_registration_launch_link**](RegistrationApi.md#get_registration_launch_link) | **POST** /registrations/{registrationId}/launchLink | Returns the link to use to launch this registration
[**get_registration_progress**](RegistrationApi.md#get_registration_progress) | **GET** /registrations/{registrationId} | Get registration progress for &#x60;registrationId&#x60;
[**get_registration_statements**](RegistrationApi.md#get_registration_statements) | **GET** /registrations/{registrationId}/xAPIStatements | Get xAPI statements for &#x60;registrationId&#x60;
[**get_registrations**](RegistrationApi.md#get_registrations) | **GET** /registrations | Gets a list of registrations including a summary of the status of each registration.
[**registration_exists**](RegistrationApi.md#registration_exists) | **HEAD** /registrations/{registrationId} | Does this registration exist?
[**set_registration_configuration**](RegistrationApi.md#set_registration_configuration) | **POST** /registrations/{registrationId}/configuration | Set configuration settings for this registration.
[**set_registration_instance_configuration**](RegistrationApi.md#set_registration_instance_configuration) | **POST** /registrations/{registrationId}/instances/{instanceId}/configuration | Set configuration settings for this registration instance.


# **create_new_registration_instance**
> create_new_registration_instance(registration_id)

Create a new instance for this registration specified by the registration ID

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration


begin
  #Create a new instance for this registration specified by the registration ID
  api_instance.create_new_registration_instance(registration_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->create_new_registration_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_registration**
> create_registration(registration, opts)

Create a registration.

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration = RusticiSoftwareCloudV2::CreateRegistrationSchema.new # CreateRegistrationSchema | 

opts = { 
  course_version: 56 # Integer | The version of the course you want to create the registration for. Unless you have a reason for using this you probably do not need to.
}

begin
  #Create a registration.
  api_instance.create_registration(registration, opts)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->create_registration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration** | [**CreateRegistrationSchema**](CreateRegistrationSchema.md)|  | 
 **course_version** | **Integer**| The version of the course you want to create the registration for. Unless you have a reason for using this you probably do not need to. | [optional] 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registration**
> delete_registration(registration_id)

Delete `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration


begin
  #Delete `registrationId`
  api_instance.delete_registration(registration_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->delete_registration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registration_configuration_setting**
> delete_registration_configuration_setting(registration_idsetting_id)

Clears the `settingId` value for this registration

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

setting_id = "setting_id_example" # String | 


begin
  #Clears the `settingId` value for this registration
  api_instance.delete_registration_configuration_setting(registration_idsetting_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->delete_registration_configuration_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **setting_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registration_instance_configuration_setting**
> delete_registration_instance_configuration_setting(registration_idinstance_idsetting_id)

Clears the `settingId` value for this registration instance

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

setting_id = "setting_id_example" # String | 


begin
  #Clears the `settingId` value for this registration instance
  api_instance.delete_registration_instance_configuration_setting(registration_idinstance_idsetting_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->delete_registration_instance_configuration_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **setting_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registration_progress**
> delete_registration_progress(registration_id)

Delete registration progress (clear registration)

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration


begin
  #Delete registration progress (clear registration)
  api_instance.delete_registration_progress(registration_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->delete_registration_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_registrations_global_data**
> delete_registrations_global_data(registration_id)

Delete global data associated with `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration


begin
  #Delete global data associated with `registrationId`
  api_instance.delete_registrations_global_data(registration_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->delete_registrations_global_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_configuration**
> SettingListSchema get_registration_configuration(registration_id, opts)

Returns all configuration settings for this registration

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

opts = { 
  include_metadata: false # BOOLEAN | 
}

begin
  #Returns all configuration settings for this registration
  result = api_instance.get_registration_configuration(registration_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **include_metadata** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**SettingListSchema**](SettingListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_instance_configuration**
> SettingListSchema get_registration_instance_configuration(registration_idinstance_id, opts)

Returns all configuration settings for this registration instance

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

opts = { 
  include_metadata: false # BOOLEAN | 
}

begin
  #Returns all configuration settings for this registration instance
  result = api_instance.get_registration_instance_configuration(registration_idinstance_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_instance_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **include_metadata** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**SettingListSchema**](SettingListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_instance_launch_history**
> LaunchHistoryListSchema get_registration_instance_launch_history(registration_idinstance_id, opts)

Returns history of this registration's launches

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

opts = { 
  include_history_log: false # BOOLEAN | Whether to include the history log in the launch history
}

begin
  #Returns history of this registration's launches
  result = api_instance.get_registration_instance_launch_history(registration_idinstance_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_instance_launch_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **include_history_log** | **BOOLEAN**| Whether to include the history log in the launch history | [optional] [default to false]

### Return type

[**LaunchHistoryListSchema**](LaunchHistoryListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_instance_progress**
> RegistrationSchema get_registration_instance_progress(registration_idinstance_id, opts)

Get registration progress for instance `instanceId` of `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

opts = { 
  include_child_results: false, # BOOLEAN | Include information about each learning object, not just the top level in the results
  include_interactions_and_objectives: false, # BOOLEAN | Include interactions and objectives in the results
  include_runtime: false # BOOLEAN | Include runtime details in the results
}

begin
  #Get registration progress for instance `instanceId` of `registrationId`
  result = api_instance.get_registration_instance_progress(registration_idinstance_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_instance_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **include_child_results** | **BOOLEAN**| Include information about each learning object, not just the top level in the results | [optional] [default to false]
 **include_interactions_and_objectives** | **BOOLEAN**| Include interactions and objectives in the results | [optional] [default to false]
 **include_runtime** | **BOOLEAN**| Include runtime details in the results | [optional] [default to false]

### Return type

[**RegistrationSchema**](RegistrationSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_instance_statements**
> XapiStatementResult get_registration_instance_statements(registration_idinstance_id, opts)

Get xAPI statements for instance `instanceId` of `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

opts = { 
  since: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: "more_example" # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
}

begin
  #Get xAPI statements for instance `instanceId` of `registrationId`
  result = api_instance.get_registration_instance_statements(registration_idinstance_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_instance_statements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **more** | **String**| Value for this parameter will be provided in the &#39;more&#39; property of registration lists, where needed. An opaque value, construction and parsing may change without notice. | [optional] 

### Return type

[**XapiStatementResult**](XapiStatementResult.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_instances**
> RegistrationListSchema get_registration_instances(registration_id, opts)

Get all the instances of this the registration specified by the registration ID

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

opts = { 
  _until: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  since: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: "more_example" # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
  include_child_results: false, # BOOLEAN | Include information about each learning object, not just the top level in the results
  include_interactions_and_objectives: false, # BOOLEAN | Include interactions and objectives in the results
  include_runtime: false # BOOLEAN | Include runtime details in the results
}

begin
  #Get all the instances of this the registration specified by the registration ID
  result = api_instance.get_registration_instances(registration_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **more** | **String**| Value for this parameter will be provided in the &#39;more&#39; property of registration lists, where needed. An opaque value, construction and parsing may change without notice. | [optional] 
 **include_child_results** | **BOOLEAN**| Include information about each learning object, not just the top level in the results | [optional] [default to false]
 **include_interactions_and_objectives** | **BOOLEAN**| Include interactions and objectives in the results | [optional] [default to false]
 **include_runtime** | **BOOLEAN**| Include runtime details in the results | [optional] [default to false]

### Return type

[**RegistrationListSchema**](RegistrationListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_launch_history**
> LaunchHistoryListSchema get_registration_launch_history(registration_id, opts)

Returns history of this registration's launches

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

opts = { 
  include_history_log: false # BOOLEAN | Whether to include the history log in the launch history
}

begin
  #Returns history of this registration's launches
  result = api_instance.get_registration_launch_history(registration_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_launch_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **include_history_log** | **BOOLEAN**| Whether to include the history log in the launch history | [optional] [default to false]

### Return type

[**LaunchHistoryListSchema**](LaunchHistoryListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_launch_link**
> LaunchLinkSchema get_registration_launch_link(registration_idlaunch_link_request)

Returns the link to use to launch this registration

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

launch_link_request = RusticiSoftwareCloudV2::LaunchLinkRequestSchema.new # LaunchLinkRequestSchema | 


begin
  #Returns the link to use to launch this registration
  result = api_instance.get_registration_launch_link(registration_idlaunch_link_request)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_launch_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **launch_link_request** | [**LaunchLinkRequestSchema**](LaunchLinkRequestSchema.md)|  | 

### Return type

[**LaunchLinkSchema**](LaunchLinkSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_progress**
> RegistrationSchema get_registration_progress(registration_id, opts)

Get registration progress for `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

opts = { 
  include_child_results: false, # BOOLEAN | Include information about each learning object, not just the top level in the results
  include_interactions_and_objectives: false, # BOOLEAN | Include interactions and objectives in the results
  include_runtime: false # BOOLEAN | Include runtime details in the results
}

begin
  #Get registration progress for `registrationId`
  result = api_instance.get_registration_progress(registration_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **include_child_results** | **BOOLEAN**| Include information about each learning object, not just the top level in the results | [optional] [default to false]
 **include_interactions_and_objectives** | **BOOLEAN**| Include interactions and objectives in the results | [optional] [default to false]
 **include_runtime** | **BOOLEAN**| Include runtime details in the results | [optional] [default to false]

### Return type

[**RegistrationSchema**](RegistrationSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registration_statements**
> XapiStatementResult get_registration_statements(registration_id, opts)

Get xAPI statements for `registrationId`

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

opts = { 
  since: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: "more_example" # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
}

begin
  #Get xAPI statements for `registrationId`
  result = api_instance.get_registration_statements(registration_id, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registration_statements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **more** | **String**| Value for this parameter will be provided in the &#39;more&#39; property of registration lists, where needed. An opaque value, construction and parsing may change without notice. | [optional] 

### Return type

[**XapiStatementResult**](XapiStatementResult.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_registrations**
> RegistrationListSchema get_registrations(opts)

Gets a list of registrations including a summary of the status of each registration.

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

opts = { 
  course_id: "course_id_example", # String | Only registrations for the specified course id will be included.
  learner_id: "learner_id_example", # String | Only registrations for the specified learner id will be included.
  since: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: "more_example" # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
  include_child_results: false, # BOOLEAN | Include information about each learning object, not just the top level in the results
  include_interactions_and_objectives: false, # BOOLEAN | Include interactions and objectives in the results
  include_runtime: false # BOOLEAN | Include runtime details in the results
}

begin
  #Gets a list of registrations including a summary of the status of each registration.
  result = api_instance.get_registrations(opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->get_registrations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**| Only registrations for the specified course id will be included. | [optional] 
 **learner_id** | **String**| Only registrations for the specified learner id will be included. | [optional] 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **more** | **String**| Value for this parameter will be provided in the &#39;more&#39; property of registration lists, where needed. An opaque value, construction and parsing may change without notice. | [optional] 
 **include_child_results** | **BOOLEAN**| Include information about each learning object, not just the top level in the results | [optional] [default to false]
 **include_interactions_and_objectives** | **BOOLEAN**| Include interactions and objectives in the results | [optional] [default to false]
 **include_runtime** | **BOOLEAN**| Include runtime details in the results | [optional] [default to false]

### Return type

[**RegistrationListSchema**](RegistrationListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **registration_exists**
> registration_exists(registration_id)

Does this registration exist?

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration


begin
  #Does this registration exist?
  api_instance.registration_exists(registration_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->registration_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_registration_configuration**
> set_registration_configuration(registration_idconfiguration_settings)

Set configuration settings for this registration.

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

configuration_settings = RusticiSoftwareCloudV2::SettingsPostSchema.new # SettingsPostSchema | 


begin
  #Set configuration settings for this registration.
  api_instance.set_registration_configuration(registration_idconfiguration_settings)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->set_registration_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **configuration_settings** | [**SettingsPostSchema**](SettingsPostSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_registration_instance_configuration**
> set_registration_instance_configuration(registration_idinstance_idconfiguration_settings)

Set configuration settings for this registration instance.

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

api_instance = RusticiSoftwareCloudV2::RegistrationApi.new

registration_id = "registration_id_example" # String | id for this registration

instance_id = 56 # Integer | The instance of this registration

configuration_settings = RusticiSoftwareCloudV2::SettingsPostSchema.new # SettingsPostSchema | 


begin
  #Set configuration settings for this registration instance.
  api_instance.set_registration_instance_configuration(registration_idinstance_idconfiguration_settings)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling RegistrationApi->set_registration_instance_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_id** | **String**| id for this registration | 
 **instance_id** | **Integer**| The instance of this registration | 
 **configuration_settings** | [**SettingsPostSchema**](SettingsPostSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



