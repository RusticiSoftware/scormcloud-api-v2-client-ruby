# RusticiSoftwareCloudV2::LaunchLinkRequestSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiry** | **Integer** | Number of seconds from now this link will expire in. Defaults to 120s. Range 10s:300s | [optional] [default to 120]
**redirect_on_exit_url** | **String** | The URL the application should redirect to when the learner exits a course. If not specified, configured value will be used. | [optional] 
**tracking** | **BOOLEAN** | Should this launch be tracked? If false, Engine will avoid tracking to the extent possible for the standard being used. | [optional] [default to true]
**start_sco** | **String** | For SCORM, SCO identifier to override launch, overriding the normal sequencing. | [optional] 
**culture** | **String** | This parameter should specify a culture code. If specified, and supported, the navigation and alerts in the player will be displayed in the associated language. If not specified, the locale of the user’s browser will be used. | [optional] 
**css_url** | **String** | A Url pointing to custom css for the player to use. | [optional] 
**learner_tags** | **Array&lt;String&gt;** |  | [optional] 
**course_tags** | **Array&lt;String&gt;** |  | [optional] 
**registration_tags** | **Array&lt;String&gt;** |  | [optional] 
**additionalvalues** | [**Array&lt;ItemValuePairSchema&gt;**](ItemValuePairSchema.md) |  | [optional] 


