# RusticiSoftwareCloudV2::RegistrationSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**instance** | **Integer** |  | [optional] 
**xapi_registration_id** | **String** | xAPI registration id associated with this registration | [optional] 
**dispatch_id** | **String** | Dispatch ID for this registration, if applicable | [optional] 
**updated** | **DateTime** |  | [optional] 
**registration_completion** | [**RegistrationCompletion**](RegistrationCompletion.md) |  | [optional] 
**registration_completion_amount** | **Float** |  | [optional] 
**registration_success** | [**RegistrationSuccess**](RegistrationSuccess.md) |  | [optional] 
**score** | [**ScoreSchema**](ScoreSchema.md) |  | [optional] 
**total_seconds_tracked** | **Float** |  | [optional] 
**first_access_date** | **DateTime** |  | [optional] 
**last_access_date** | **DateTime** |  | [optional] 
**completed_date** | **DateTime** |  | [optional] 
**created_date** | **DateTime** |  | [optional] 
**course** | [**CourseReferenceSchema**](CourseReferenceSchema.md) |  | [optional] 
**learner** | [**LearnerSchema**](LearnerSchema.md) |  | [optional] 
**global_objectives** | [**Array&lt;ObjectiveSchema&gt;**](ObjectiveSchema.md) |  | [optional] 
**shared_data** | [**Array&lt;SharedDataEntrySchema&gt;**](SharedDataEntrySchema.md) |  | [optional] 
**suspended_activity_id** | **String** |  | [optional] 
**activity_details** | [**ActivityResultSchema**](ActivityResultSchema.md) |  | [optional] 


