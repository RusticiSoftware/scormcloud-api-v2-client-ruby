=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module RusticiSoftwareCloudV2
  class AboutApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get back the API version and Application name 
    # Get back the API version and application name.  The return value for this method will never change. This method largely exists for API parity with our on-premise or Managed Hosting products, which may return different release numbers from this endpoint.  For SCORM Cloud, this is effectively equal to the `/ping` resource. 
    # @param [Hash] opts the optional parameters
    # @return [AboutSchema]
    def get_about(opts = {})
      data, _status_code, _headers = get_about_with_http_info(opts)
      data
    end

    # Get back the API version and Application name 
    # Get back the API version and application name.  The return value for this method will never change. This method largely exists for API parity with our on-premise or Managed Hosting products, which may return different release numbers from this endpoint.  For SCORM Cloud, this is effectively equal to the &#x60;/ping&#x60; resource. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AboutSchema, Fixnum, Hash)>] AboutSchema data, response status code and response headers
    def get_about_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AboutApi.get_about ...'
      end
      # resource path
      local_var_path = '/about'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AboutSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AboutApi#get_about\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
