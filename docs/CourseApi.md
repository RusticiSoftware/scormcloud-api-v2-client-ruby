# RusticiSoftwareCloudV2::CourseApi

All URIs are relative to *https://cloud.scorm.com/api/v2/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**build_course_preview_launch_link**](CourseApi.md#build_course_preview_launch_link) | **POST** /courses/{courseId}/preview | Returns the launch link to use to preview this course
[**build_course_preview_launch_link_with_version**](CourseApi.md#build_course_preview_launch_link_with_version) | **POST** /courses/{courseId}/versions/{versionId}/preview | Returns the link to use to preview this course
[**create_fetch_and_import_course_job**](CourseApi.md#create_fetch_and_import_course_job) | **POST** /courses/importJobs | Start a job to fetch and import a course.
[**create_upload_and_import_course_job**](CourseApi.md#create_upload_and_import_course_job) | **POST** /courses/importJobs/upload | Upload a course and start an import job for it.
[**delete_course**](CourseApi.md#delete_course) | **DELETE** /courses/{courseId} | Delete &#x60;courseId&#x60;
[**delete_course_configuration_setting**](CourseApi.md#delete_course_configuration_setting) | **DELETE** /courses/{courseId}/configuration/{settingId} | Clears the &#x60;settingId&#x60; value for this course
[**delete_course_tags**](CourseApi.md#delete_course_tags) | **DELETE** /courses/{courseId}/tags | Delete tags for this course
[**delete_course_version**](CourseApi.md#delete_course_version) | **DELETE** /courses/{courseId}/versions/{versionId} | Delete version &#x60;versionId&#x60; of &#x60;courseId&#x60;
[**delete_course_version_configuration_setting**](CourseApi.md#delete_course_version_configuration_setting) | **DELETE** /courses/{courseId}/versions/{versionId}/configuration/{settingId} | Clears the &#x60;settingId&#x60; value for this course and version.
[**get_course**](CourseApi.md#get_course) | **GET** /courses/{courseId} | Get information about &#x60;courseId&#x60;
[**get_course_configuration**](CourseApi.md#get_course_configuration) | **GET** /courses/{courseId}/configuration | Returns all configuration settings for this course
[**get_course_statements**](CourseApi.md#get_course_statements) | **GET** /courses/{courseId}/xAPIStatements | Get xAPI statements for &#x60;courseId&#x60;
[**get_course_tags**](CourseApi.md#get_course_tags) | **GET** /courses/{courseId}/tags | Get the tags for this course
[**get_course_version_configuration**](CourseApi.md#get_course_version_configuration) | **GET** /courses/{courseId}/versions/{versionId}/configuration | Returns all configuration settings for this course and version.
[**get_course_version_info**](CourseApi.md#get_course_version_info) | **GET** /courses/{courseId}/versions/{versionId} | Get version &#x60;versionId&#x60; of &#x60;courseId&#x60;
[**get_course_version_statements**](CourseApi.md#get_course_version_statements) | **GET** /courses/{courseId}/versions/{versionId}/xAPIStatements | Get xAPI statements for version &#x60;versionId&#x60; of &#x60;courseId&#x60;
[**get_course_versions**](CourseApi.md#get_course_versions) | **GET** /courses/{courseId}/versions | Get all versions of &#x60;courseId&#x60;
[**get_courses**](CourseApi.md#get_courses) | **GET** /courses | Get all courses for &#x60;appId&#x60;
[**get_import_job_status**](CourseApi.md#get_import_job_status) | **GET** /courses/importJobs/{importJobId} | Check the status of an import job.
[**put_course_tags**](CourseApi.md#put_course_tags) | **PUT** /courses/{courseId}/tags | Set the tags for this course
[**put_course_tags_batch**](CourseApi.md#put_course_tags_batch) | **PUT** /courses/tags | Sets all of the provided tags on all of the provided courses
[**set_course_configuration**](CourseApi.md#set_course_configuration) | **POST** /courses/{courseId}/configuration | Set configuration settings for this course.
[**set_course_title**](CourseApi.md#set_course_title) | **PUT** /courses/{courseId}/title | Sets the course title for &#x60;courseId&#x60;
[**set_course_version_configuration**](CourseApi.md#set_course_version_configuration) | **POST** /courses/{courseId}/versions/{versionId}/configuration | Set configuration settings for this course and version.


# **build_course_preview_launch_link**
> LaunchLinkSchema build_course_preview_launch_link(course_id, launch_link_request, opts)

Returns the launch link to use to preview this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

launch_link_request = RusticiSoftwareCloudV2::LaunchLinkRequestSchema.new # LaunchLinkRequestSchema | 

opts = { 
  css_url: 'css_url_example' # String | 
}

begin
  #Returns the launch link to use to preview this course
  result = api_instance.build_course_preview_launch_link(course_id, launch_link_request, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->build_course_preview_launch_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **launch_link_request** | [**LaunchLinkRequestSchema**](LaunchLinkRequestSchema.md)|  | 
 **css_url** | **String**|  | [optional] 

### Return type

[**LaunchLinkSchema**](LaunchLinkSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **build_course_preview_launch_link_with_version**
> LaunchLinkSchema build_course_preview_launch_link_with_version(course_id, version_id, launch_link_request)

Returns the link to use to preview this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

launch_link_request = RusticiSoftwareCloudV2::LaunchLinkRequestSchema.new # LaunchLinkRequestSchema | 


begin
  #Returns the link to use to preview this course
  result = api_instance.build_course_preview_launch_link_with_version(course_id, version_id, launch_link_request)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->build_course_preview_launch_link_with_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **launch_link_request** | [**LaunchLinkRequestSchema**](LaunchLinkRequestSchema.md)|  | 

### Return type

[**LaunchLinkSchema**](LaunchLinkSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_fetch_and_import_course_job**
> StringResultSchema create_fetch_and_import_course_job(course_id, import_request, opts)

Start a job to fetch and import a course.

An import job will be started to fetch and import the referenced file, and the import job ID will be returned. If the import is successful, the imported course will be registered using the courseId provided.\"

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | A unique identifier your application will use to identify the course after import. Your application is responsible both for generating this unique ID and for keeping track of the ID for later use.

import_request = RusticiSoftwareCloudV2::ImportFetchRequestSchema.new # ImportFetchRequestSchema | 

opts = { 
  may_create_new_version: false, # BOOLEAN | Is it OK to create a new version of this course? If this is set to false and the course already exists, the upload will fail. If true and the course already exists then a new version will be created. No effect if the course doesn't already exist.
  postback_url: 'postback_url_example' # String | An optional parameter that specifies a URL to send a postback to when the course has finished uploading.
}

begin
  #Start a job to fetch and import a course.
  result = api_instance.create_fetch_and_import_course_job(course_id, import_request, opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->create_fetch_and_import_course_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**| A unique identifier your application will use to identify the course after import. Your application is responsible both for generating this unique ID and for keeping track of the ID for later use. | 
 **import_request** | [**ImportFetchRequestSchema**](ImportFetchRequestSchema.md)|  | 
 **may_create_new_version** | **BOOLEAN**| Is it OK to create a new version of this course? If this is set to false and the course already exists, the upload will fail. If true and the course already exists then a new version will be created. No effect if the course doesn&#39;t already exist. | [optional] [default to false]
 **postback_url** | **String**| An optional parameter that specifies a URL to send a postback to when the course has finished uploading. | [optional] 

### Return type

[**StringResultSchema**](StringResultSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_upload_and_import_course_job**
> StringResultSchema create_upload_and_import_course_job(course_id, , opts)

Upload a course and start an import job for it.

An import job will be started to import the posted file, and the import job ID will be returned. If the import is successful, the imported course will be registered using the courseId provided.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | A unique identifier your application will use to identify the course after import. Your application is responsible both for generating this unique ID and for keeping track of the ID for later use.

opts = { 
  may_create_new_version: false, # BOOLEAN | Is it OK to create a new version of this course? If this is set to false and the course already exists, the upload will fail. If true and the course already exists then a new version will be created. No effect if the course doesn't already exist.
  file: File.new('/path/to/file.txt'), # File | The zip file of the course contents to import.
  postback_url: 'postback_url_example' # String | An optional parameter that specifies a URL to send a postback to when the course has finished uploading.
}

begin
  #Upload a course and start an import job for it.
  result = api_instance.create_upload_and_import_course_job(course_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->create_upload_and_import_course_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**| A unique identifier your application will use to identify the course after import. Your application is responsible both for generating this unique ID and for keeping track of the ID for later use. | 
 **may_create_new_version** | **BOOLEAN**| Is it OK to create a new version of this course? If this is set to false and the course already exists, the upload will fail. If true and the course already exists then a new version will be created. No effect if the course doesn&#39;t already exist. | [optional] [default to false]
 **file** | **File**| The zip file of the course contents to import. | [optional] 
 **postback_url** | **String**| An optional parameter that specifies a URL to send a postback to when the course has finished uploading. | [optional] 

### Return type

[**StringResultSchema**](StringResultSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_course**
> delete_course(course_id, )

Delete `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 


begin
  #Delete `courseId`
  api_instance.delete_course(course_id, )
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->delete_course: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_course_configuration_setting**
> delete_course_configuration_setting(course_id, setting_id)

Clears the `settingId` value for this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

setting_id = 'setting_id_example' # String | 


begin
  #Clears the `settingId` value for this course
  api_instance.delete_course_configuration_setting(course_id, setting_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->delete_course_configuration_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **setting_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_course_tags**
> delete_course_tags(course_id, tags)

Delete tags for this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

tags = RusticiSoftwareCloudV2::TagListSchema.new # TagListSchema | 


begin
  #Delete tags for this course
  api_instance.delete_course_tags(course_id, tags)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->delete_course_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **tags** | [**TagListSchema**](TagListSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_course_version**
> delete_course_version(course_id, version_id, )

Delete version `versionId` of `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version


begin
  #Delete version `versionId` of `courseId`
  api_instance.delete_course_version(course_id, version_id, )
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->delete_course_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_course_version_configuration_setting**
> delete_course_version_configuration_setting(course_id, version_id, setting_id)

Clears the `settingId` value for this course and version.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

setting_id = 'setting_id_example' # String | 


begin
  #Clears the `settingId` value for this course and version.
  api_instance.delete_course_version_configuration_setting(course_id, version_id, setting_id)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->delete_course_version_configuration_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **setting_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course**
> CourseSchema get_course(course_id, , opts)

Get information about `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

opts = { 
  include_registration_count: false, # BOOLEAN | Include the registration count in the results
  include_course_metadata: false, # BOOLEAN | Include course metadata in the results. If the course has no metadata, adding this parameter has no effect.
}

begin
  #Get information about `courseId`
  result = api_instance.get_course(course_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **include_registration_count** | **BOOLEAN**| Include the registration count in the results | [optional] [default to false]
 **include_course_metadata** | **BOOLEAN**| Include course metadata in the results. If the course has no metadata, adding this parameter has no effect. | [optional] [default to false]

### Return type

[**CourseSchema**](CourseSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course_configuration**
> SettingListSchema get_course_configuration(course_id, , opts)

Returns all configuration settings for this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

opts = { 
  include_metadata: false # BOOLEAN | 
}

begin
  #Returns all configuration settings for this course
  result = api_instance.get_course_configuration(course_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **include_metadata** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**SettingListSchema**](SettingListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course_statements**
> XapiStatementResult get_course_statements(course_id, , opts)

Get xAPI statements for `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

opts = { 
  learner_id: 'learner_id_example', # String | Only entries for the specified learner id will be included.
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: 'more_example', # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
}

begin
  #Get xAPI statements for `courseId`
  result = api_instance.get_course_statements(course_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_statements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **learner_id** | **String**| Only entries for the specified learner id will be included. | [optional] 
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



# **get_course_tags**
> TagListSchema get_course_tags(course_id, )

Get the tags for this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 


begin
  #Get the tags for this course
  result = api_instance.get_course_tags(course_id, )
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 

### Return type

[**TagListSchema**](TagListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course_version_configuration**
> SettingListSchema get_course_version_configuration(course_id, version_id, , opts)

Returns all configuration settings for this course and version.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

opts = { 
  include_metadata: false # BOOLEAN | 
}

begin
  #Returns all configuration settings for this course and version.
  result = api_instance.get_course_version_configuration(course_id, version_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_version_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **include_metadata** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**SettingListSchema**](SettingListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course_version_info**
> CourseSchema get_course_version_info(course_id, version_id, , opts)

Get version `versionId` of `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

opts = { 
  include_registration_count: false, # BOOLEAN | Include the registration count in the results
  include_course_metadata: false, # BOOLEAN | Include course metadata in the results. If the course has no metadata, adding this parameter has no effect.
}

begin
  #Get version `versionId` of `courseId`
  result = api_instance.get_course_version_info(course_id, version_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_version_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **include_registration_count** | **BOOLEAN**| Include the registration count in the results | [optional] [default to false]
 **include_course_metadata** | **BOOLEAN**| Include course metadata in the results. If the course has no metadata, adding this parameter has no effect. | [optional] [default to false]

### Return type

[**CourseSchema**](CourseSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_course_version_statements**
> XapiStatementResult get_course_version_statements(course_id, version_id, , opts)

Get xAPI statements for version `versionId` of `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

opts = { 
  learner_id: 'learner_id_example', # String | Only entries for the specified learner id will be included.
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  more: 'more_example', # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
}

begin
  #Get xAPI statements for version `versionId` of `courseId`
  result = api_instance.get_course_version_statements(course_id, version_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_version_statements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **learner_id** | **String**| Only entries for the specified learner id will be included. | [optional] 
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



# **get_course_versions**
> CourseListNonPagedSchema get_course_versions(course_id, , opts)

Get all versions of `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

opts = { 
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  include_registration_count: false, # BOOLEAN | Include the registration count in the results
  include_course_metadata: false, # BOOLEAN | Include course metadata in the results. If the course has no metadata, adding this parameter has no effect.
}

begin
  #Get all versions of `courseId`
  result = api_instance.get_course_versions(course_id, , opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_course_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **include_registration_count** | **BOOLEAN**| Include the registration count in the results | [optional] [default to false]
 **include_course_metadata** | **BOOLEAN**| Include course metadata in the results. If the course has no metadata, adding this parameter has no effect. | [optional] [default to false]

### Return type

[**CourseListNonPagedSchema**](CourseListNonPagedSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_courses**
> CourseListSchema get_courses(opts)

Get all courses for `appId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

opts = { 
  more: 'more_example', # String | Value for this parameter will be provided in the 'more' property of registration lists, where needed. An opaque value, construction and parsing may change without notice.
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  _until: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
  filter: 'filter_example', # String | Optional string which filters results by a specified field (described by filterBy).
  filter_by: 'filter_by_example', # String | Optional enum parameter for specifying the field on which to run the filter.  Defaults to course_id.
  order_by: 'order_by_example', # String | Optional enum parameter for specifying the field and order by which to sort the results.  Defaults to creation_date_desc.
  include_registration_count: false, # BOOLEAN | Include the registration count in the results
  include_course_metadata: false, # BOOLEAN | Include course metadata in the results. If the course has no metadata, adding this parameter has no effect.
  tags: ['tags_example'] # Array<String> | 
}

begin
  #Get all courses for `appId`
  result = api_instance.get_courses(opts)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_courses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **more** | **String**| Value for this parameter will be provided in the &#39;more&#39; property of registration lists, where needed. An opaque value, construction and parsing may change without notice. | [optional] 
 **since** | **DateTime**| Only items updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **_until** | **DateTime**| Only items updated before the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used. | [optional] 
 **filter** | **String**| Optional string which filters results by a specified field (described by filterBy). | [optional] 
 **filter_by** | **String**| Optional enum parameter for specifying the field on which to run the filter.  Defaults to course_id. | [optional] 
 **order_by** | **String**| Optional enum parameter for specifying the field and order by which to sort the results.  Defaults to creation_date_desc. | [optional] 
 **include_registration_count** | **BOOLEAN**| Include the registration count in the results | [optional] [default to false]
 **include_course_metadata** | **BOOLEAN**| Include course metadata in the results. If the course has no metadata, adding this parameter has no effect. | [optional] [default to false]
 **tags** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**CourseListSchema**](CourseListSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_import_job_status**
> ImportJobResultSchema get_import_job_status(import_job_id)

Check the status of an import job.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

import_job_id = 'import_job_id_example' # String | Id received when the import job was submitted to the importJobs resource.


begin
  #Check the status of an import job.
  result = api_instance.get_import_job_status(import_job_id)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->get_import_job_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_job_id** | **String**| Id received when the import job was submitted to the importJobs resource. | 

### Return type

[**ImportJobResultSchema**](ImportJobResultSchema.md)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_course_tags**
> put_course_tags(course_id, tags)

Set the tags for this course

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

tags = RusticiSoftwareCloudV2::TagListSchema.new # TagListSchema | 


begin
  #Set the tags for this course
  api_instance.put_course_tags(course_id, tags)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->put_course_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **tags** | [**TagListSchema**](TagListSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_course_tags_batch**
> put_course_tags_batch(batch)

Sets all of the provided tags on all of the provided courses

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

batch = RusticiSoftwareCloudV2::CourseTagsBatchSchema.new # CourseTagsBatchSchema | 


begin
  #Sets all of the provided tags on all of the provided courses
  api_instance.put_course_tags_batch(batch)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->put_course_tags_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**CourseTagsBatchSchema**](CourseTagsBatchSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_course_configuration**
> set_course_configuration(course_id, configuration_settings)

Set configuration settings for this course.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

configuration_settings = RusticiSoftwareCloudV2::SettingsPostSchema.new # SettingsPostSchema | 


begin
  #Set configuration settings for this course.
  api_instance.set_course_configuration(course_id, configuration_settings)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->set_course_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **configuration_settings** | [**SettingsPostSchema**](SettingsPostSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_course_title**
> String set_course_title(course_id, title)

Sets the course title for `courseId`

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

title = RusticiSoftwareCloudV2::TitleSchema.new # TitleSchema | 


begin
  #Sets the course title for `courseId`
  result = api_instance.set_course_title(course_id, title)
  p result
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->set_course_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **title** | [**TitleSchema**](TitleSchema.md)|  | 

### Return type

**String**

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_course_version_configuration**
> set_course_version_configuration(course_id, version_id, configuration_settings)

Set configuration settings for this course and version.

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

api_instance = RusticiSoftwareCloudV2::CourseApi.new

course_id = 'course_id_example' # String | 

version_id = 56 # Integer | The course version

configuration_settings = RusticiSoftwareCloudV2::SettingsPostSchema.new # SettingsPostSchema | 


begin
  #Set configuration settings for this course and version.
  api_instance.set_course_version_configuration(course_id, version_id, configuration_settings)
rescue RusticiSoftwareCloudV2::ApiError => e
  puts "Exception when calling CourseApi->set_course_version_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_id** | **String**|  | 
 **version_id** | **Integer**| The course version | 
 **configuration_settings** | [**SettingsPostSchema**](SettingsPostSchema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APP_NORMAL](../README.md#APP_NORMAL), [OAUTH](../README.md#OAUTH)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



