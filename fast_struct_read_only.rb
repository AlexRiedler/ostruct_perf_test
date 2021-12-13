# frozen_string_literal: true

require 'hashie'

class FastStructReadOnly < Hashie::Mash
  include Hashie::Extensions::SymbolizeKeys

  class MissingKey < StandardError; end

  def initialize(attrs, &block)
    attrs ||= {}
    super
  end

  def method_missing(name, *args, &blk)
    return self.[](name, &blk) if key?(name)
    raise MissingKey, "no property called #{name} in hash" unless name.end_with?('?')
    super
  end

  private :[]=
end

