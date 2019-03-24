# RusticiSoftwareCloudV2::CreateRegistrationSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**course_id** | **String** |  | 
**learner** | [**LearnerSchema**](LearnerSchema.md) |  | 
**registration_id** | **String** |  | 
**xapi_registration_id** | **String** | The xapiRegistrationId to be associated with this registration. If not specified, the system will assign an xapiRegistrationId. As per the xApi specification, this must be a UUID. | [optional] 
**learner_tags** | **Array&lt;String&gt;** |  | [optional] 
**course_tags** | **Array&lt;String&gt;** |  | [optional] 
**registration_tags** | **Array&lt;String&gt;** |  | [optional] 
**post_back** | [**PostBackSchema**](PostBackSchema.md) | Specifies an optional override URL for which to post activity and status data in real time as the course is completed. By default all of these settings are read from your configuration. | [optional] 
**initial_registration_state** | [**RegistrationSchema**](RegistrationSchema.md) |  | [optional] 
**initial_settings** | [**SettingsPostSchema**](SettingsPostSchema.md) |  | [optional] 


