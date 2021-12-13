# frozen_string_literal: true
require 'json'

class FirmStruct
  def initialize(hash)
    raise ArgumentError, "first argument must be a Hash, found #{hash.class.name}" unless hash.is_a?(Hash)

    @hash = hash
    @ro_struct = Hash.new
  end

  def self.from_json(json)
    new(::JSON.parse(json))
  end

  def method_missing(name, *args, &blk)
    return self[name] if __key?(name)
    return !!self[__convert_key(name[...-1])] if name.end_with?('?')

    super
  end

  def respond_to?(name)
    return true if __key?(name)
    return true if name.end_with?('?')

    super
  end

  def [](key, *sub_keys)
    ckey = __convert_key(key)

    result =
      if @ro_struct.key?(ckey)
        @ro_struct[ckey] 
      else
        @ro_struct[ckey] = __convert_value(@hash[ckey])
      end

    return result if sub_keys.empty?

    __dig(result, *sub_keys)
  end

  def __dig(result, first_key, *sub_keys)
    return unless result

    return result[first_key] if sub_keys.empty?

    __dig(result[first_key], *sub_keys)
  end

  def __convert_value(value)
    case value
    when Array
      value.map { |v| __convert_value(v) }
    when Hash
      FirmStruct.new(value)
    else
      value
    end
  end

  def __key?(key)
    @hash.key?(__convert_key(key))
  end

  def __convert_key(key)
    key.is_a?(Symbol) ? key.to_s : key
  end

  def to_h
    @hash.to_h
  end

  def to_hash
    @hash.to_hash
  end

  def inspect
    "FirmStruct<#{@hash.inspect}>"
  end

  def to_s
    @hash.to_s
  end

  def ==(other)
    @hash == other.instance_variable_get(:@hash)
  end
end
