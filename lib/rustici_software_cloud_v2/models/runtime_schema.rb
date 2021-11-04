=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module RusticiSoftwareCloudV2
  class RuntimeSchema
    attr_accessor :completion_status

    attr_accessor :credit

    attr_accessor :entry

    attr_accessor :exit

    attr_accessor :learner_preference

    attr_accessor :location

    attr_accessor :mode

    attr_accessor :progress_measure

    attr_accessor :score_scaled

    attr_accessor :score_raw

    attr_accessor :score_min

    attr_accessor :score_max

    attr_accessor :total_time

    attr_accessor :time_tracked

    attr_accessor :runtime_success_status

    attr_accessor :suspend_data

    attr_accessor :learner_comments

    attr_accessor :lms_comments

    attr_accessor :runtime_interactions

    attr_accessor :runtime_objectives

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'completion_status' => :'completionStatus',
        :'credit' => :'credit',
        :'entry' => :'entry',
        :'exit' => :'exit',
        :'learner_preference' => :'learnerPreference',
        :'location' => :'location',
        :'mode' => :'mode',
        :'progress_measure' => :'progressMeasure',
        :'score_scaled' => :'scoreScaled',
        :'score_raw' => :'scoreRaw',
        :'score_min' => :'scoreMin',
        :'score_max' => :'scoreMax',
        :'total_time' => :'totalTime',
        :'time_tracked' => :'timeTracked',
        :'runtime_success_status' => :'runtimeSuccessStatus',
        :'suspend_data' => :'suspendData',
        :'learner_comments' => :'learnerComments',
        :'lms_comments' => :'lmsComments',
        :'runtime_interactions' => :'runtimeInteractions',
        :'runtime_objectives' => :'runtimeObjectives'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'completion_status' => :'String',
        :'credit' => :'String',
        :'entry' => :'String',
        :'exit' => :'String',
        :'learner_preference' => :'LearnerPreferenceSchema',
        :'location' => :'String',
        :'mode' => :'String',
        :'progress_measure' => :'String',
        :'score_scaled' => :'String',
        :'score_raw' => :'String',
        :'score_min' => :'String',
        :'score_max' => :'String',
        :'total_time' => :'String',
        :'time_tracked' => :'String',
        :'runtime_success_status' => :'String',
        :'suspend_data' => :'String',
        :'learner_comments' => :'Array<CommentSchema>',
        :'lms_comments' => :'Array<CommentSchema>',
        :'runtime_interactions' => :'Array<RuntimeInteractionSchema>',
        :'runtime_objectives' => :'Array<RuntimeObjectiveSchema>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'completionStatus')
        self.completion_status = attributes[:'completionStatus']
      end

      if attributes.has_key?(:'credit')
        self.credit = attributes[:'credit']
      end

      if attributes.has_key?(:'entry')
        self.entry = attributes[:'entry']
      end

      if attributes.has_key?(:'exit')
        self.exit = attributes[:'exit']
      end

      if attributes.has_key?(:'learnerPreference')
        self.learner_preference = attributes[:'learnerPreference']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.has_key?(:'progressMeasure')
        self.progress_measure = attributes[:'progressMeasure']
      end

      if attributes.has_key?(:'scoreScaled')
        self.score_scaled = attributes[:'scoreScaled']
      end

      if attributes.has_key?(:'scoreRaw')
        self.score_raw = attributes[:'scoreRaw']
      end

      if attributes.has_key?(:'scoreMin')
        self.score_min = attributes[:'scoreMin']
      end

      if attributes.has_key?(:'scoreMax')
        self.score_max = attributes[:'scoreMax']
      end

      if attributes.has_key?(:'totalTime')
        self.total_time = attributes[:'totalTime']
      end

      if attributes.has_key?(:'timeTracked')
        self.time_tracked = attributes[:'timeTracked']
      end

      if attributes.has_key?(:'runtimeSuccessStatus')
        self.runtime_success_status = attributes[:'runtimeSuccessStatus']
      else
        self.runtime_success_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'suspendData')
        self.suspend_data = attributes[:'suspendData']
      end

      if attributes.has_key?(:'learnerComments')
        if (value = attributes[:'learnerComments']).is_a?(Array)
          self.learner_comments = value
        end
      end

      if attributes.has_key?(:'lmsComments')
        if (value = attributes[:'lmsComments']).is_a?(Array)
          self.lms_comments = value
        end
      end

      if attributes.has_key?(:'runtimeInteractions')
        if (value = attributes[:'runtimeInteractions']).is_a?(Array)
          self.runtime_interactions = value
        end
      end

      if attributes.has_key?(:'runtimeObjectives')
        if (value = attributes[:'runtimeObjectives']).is_a?(Array)
          self.runtime_objectives = value
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

    # Custom attribute writer method checking allowed values (enum).
    #
    # allowable_values = ['UNKNOWN', 'PASSED', 'FAILED']
    #
    # @param [Object] runtime_success_status Object to be assigned
    def runtime_success_status=(runtime_success_status)
      @runtime_success_status = runtime_success_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          completion_status == o.completion_status &&
          credit == o.credit &&
          entry == o.entry &&
          exit == o.exit &&
          learner_preference == o.learner_preference &&
          location == o.location &&
          mode == o.mode &&
          progress_measure == o.progress_measure &&
          score_scaled == o.score_scaled &&
          score_raw == o.score_raw &&
          score_min == o.score_min &&
          score_max == o.score_max &&
          total_time == o.total_time &&
          time_tracked == o.time_tracked &&
          runtime_success_status == o.runtime_success_status &&
          suspend_data == o.suspend_data &&
          learner_comments == o.learner_comments &&
          lms_comments == o.lms_comments &&
          runtime_interactions == o.runtime_interactions &&
          runtime_objectives == o.runtime_objectives
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [completion_status, credit, entry, exit, learner_preference, location, mode, progress_measure, score_scaled, score_raw, score_min, score_max, total_time, time_tracked, runtime_success_status, suspend_data, learner_comments, lms_comments, runtime_interactions, runtime_objectives].hash
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
