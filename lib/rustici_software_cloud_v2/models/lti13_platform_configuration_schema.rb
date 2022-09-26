=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.27

=end

require 'date'

module RusticiSoftwareCloudV2
  class Lti13PlatformConfigurationSchema
    # OAuth2 client Id for this tool
    attr_accessor :client_id

    # Issuer identifier identifying the learning platform
    attr_accessor :platform_issuer_identifier

    # An unchanging identifier (locally unique within the platformIssuerIdentifier) for the platform-tool integration
    attr_accessor :deployment_id

    # Endpoint that will initiate the OIDC Authentication Request
    attr_accessor :oidc_authorization_endpoint

    # Path to the platform's JSON Web Key Set
    attr_accessor :json_web_key_set_url

    # Endpoint that will return OAuth 2 access tokens for the platform
    attr_accessor :access_token_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_id' => :'clientId',
        :'platform_issuer_identifier' => :'platformIssuerIdentifier',
        :'deployment_id' => :'deploymentId',
        :'oidc_authorization_endpoint' => :'oidcAuthorizationEndpoint',
        :'json_web_key_set_url' => :'jsonWebKeySetUrl',
        :'access_token_url' => :'accessTokenUrl'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'client_id' => :'String',
        :'platform_issuer_identifier' => :'String',
        :'deployment_id' => :'String',
        :'oidc_authorization_endpoint' => :'String',
        :'json_web_key_set_url' => :'String',
        :'access_token_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'clientId')
        self.client_id = attributes[:'clientId']
      end

      if attributes.has_key?(:'platformIssuerIdentifier')
        self.platform_issuer_identifier = attributes[:'platformIssuerIdentifier']
      end

      if attributes.has_key?(:'deploymentId')
        self.deployment_id = attributes[:'deploymentId']
      end

      if attributes.has_key?(:'oidcAuthorizationEndpoint')
        self.oidc_authorization_endpoint = attributes[:'oidcAuthorizationEndpoint']
      end

      if attributes.has_key?(:'jsonWebKeySetUrl')
        self.json_web_key_set_url = attributes[:'jsonWebKeySetUrl']
      end

      if attributes.has_key?(:'accessTokenUrl')
        self.access_token_url = attributes[:'accessTokenUrl']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @client_id.nil?
        invalid_properties.push('invalid value for "client_id", client_id cannot be nil.')
      end

      if @platform_issuer_identifier.nil?
        invalid_properties.push('invalid value for "platform_issuer_identifier", platform_issuer_identifier cannot be nil.')
      end

      if @deployment_id.nil?
        invalid_properties.push('invalid value for "deployment_id", deployment_id cannot be nil.')
      end

      if @oidc_authorization_endpoint.nil?
        invalid_properties.push('invalid value for "oidc_authorization_endpoint", oidc_authorization_endpoint cannot be nil.')
      end

      if @json_web_key_set_url.nil?
        invalid_properties.push('invalid value for "json_web_key_set_url", json_web_key_set_url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @client_id.nil?
      return false if @platform_issuer_identifier.nil?
      return false if @deployment_id.nil?
      return false if @oidc_authorization_endpoint.nil?
      return false if @json_web_key_set_url.nil?
      true
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_id == o.client_id &&
          platform_issuer_identifier == o.platform_issuer_identifier &&
          deployment_id == o.deployment_id &&
          oidc_authorization_endpoint == o.oidc_authorization_endpoint &&
          json_web_key_set_url == o.json_web_key_set_url &&
          access_token_url == o.access_token_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client_id, platform_issuer_identifier, deployment_id, oidc_authorization_endpoint, json_web_key_set_url, access_token_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = RusticiSoftwareCloudV2.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end