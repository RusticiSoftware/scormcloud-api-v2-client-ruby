=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'


module RusticiSoftwareCloudV2
  # https://github.com/adlnet/xAPI-Spec/blob/1.0.2/xAPI.md#416-context
  class XapiContext
    attr_accessor :registration

    attr_accessor :instructor

    attr_accessor :team

    attr_accessor :context_activities

    attr_accessor :revision

    attr_accessor :platform

    attr_accessor :language

    attr_accessor :statement

    attr_accessor :extensions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'registration' => :'registration',
        :'instructor' => :'instructor',
        :'team' => :'team',
        :'context_activities' => :'contextActivities',
        :'revision' => :'revision',
        :'platform' => :'platform',
        :'language' => :'language',
        :'statement' => :'statement',
        :'extensions' => :'extensions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'registration' => :'String',
        :'instructor' => :'XapiAgentGroup',
        :'team' => :'XapiAgentGroup',
        :'context_activities' => :'XapiContextActivity',
        :'revision' => :'String',
        :'platform' => :'String',
        :'language' => :'String',
        :'statement' => :'XapiStatementReference',
        :'extensions' => :'Hash<String, Object>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'registration')
        self.registration = attributes[:'registration']
      end

      if attributes.has_key?(:'instructor')
        self.instructor = attributes[:'instructor']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'contextActivities')
        self.context_activities = attributes[:'contextActivities']
      end

      if attributes.has_key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'statement')
        self.statement = attributes[:'statement']
      end

      if attributes.has_key?(:'extensions')
        if (value = attributes[:'extensions']).is_a?(Hash)
          self.extensions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          registration == o.registration &&
          instructor == o.instructor &&
          team == o.team &&
          context_activities == o.context_activities &&
          revision == o.revision &&
          platform == o.platform &&
          language == o.language &&
          statement == o.statement &&
          extensions == o.extensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [registration, instructor, team, context_activities, revision, platform, language, statement, extensions].hash
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
