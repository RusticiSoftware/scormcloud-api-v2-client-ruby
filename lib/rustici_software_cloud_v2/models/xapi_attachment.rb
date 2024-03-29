=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'


module RusticiSoftwareCloudV2
  # https://github.com/adlnet/xAPI-Spec/blob/1.0.2/xAPI.md#4111-attachments
  class XapiAttachment
    attr_accessor :usage_type

    attr_accessor :display

    attr_accessor :description

    attr_accessor :content_type

    attr_accessor :length

    attr_accessor :sha2

    attr_accessor :file_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'usage_type' => :'usageType',
        :'display' => :'display',
        :'description' => :'description',
        :'content_type' => :'contentType',
        :'length' => :'length',
        :'sha2' => :'sha2',
        :'file_url' => :'fileUrl'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'usage_type' => :'String',
        :'display' => :'Hash<String, String>',
        :'description' => :'Hash<String, String>',
        :'content_type' => :'String',
        :'length' => :'Integer',
        :'sha2' => :'String',
        :'file_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'usageType')
        self.usage_type = attributes[:'usageType']
      end

      if attributes.has_key?(:'display')
        if (value = attributes[:'display']).is_a?(Hash)
          self.display = value
        end
      end

      if attributes.has_key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.has_key?(:'contentType')
        self.content_type = attributes[:'contentType']
      end

      if attributes.has_key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.has_key?(:'sha2')
        self.sha2 = attributes[:'sha2']
      end

      if attributes.has_key?(:'fileUrl')
        self.file_url = attributes[:'fileUrl']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @usage_type.nil?
        invalid_properties.push('invalid value for "usage_type", usage_type cannot be nil.')
      end

      if @display.nil?
        invalid_properties.push('invalid value for "display", display cannot be nil.')
      end

      if @content_type.nil?
        invalid_properties.push('invalid value for "content_type", content_type cannot be nil.')
      end

      if @length.nil?
        invalid_properties.push('invalid value for "length", length cannot be nil.')
      end

      if @sha2.nil?
        invalid_properties.push('invalid value for "sha2", sha2 cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @usage_type.nil?
      return false if @display.nil?
      return false if @content_type.nil?
      return false if @length.nil?
      return false if @sha2.nil?
      true
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          usage_type == o.usage_type &&
          display == o.display &&
          description == o.description &&
          content_type == o.content_type &&
          length == o.length &&
          sha2 == o.sha2 &&
          file_url == o.file_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [usage_type, display, description, content_type, length, sha2, file_url].hash
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
