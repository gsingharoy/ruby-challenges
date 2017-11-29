# frozen_string_literal: true

class MediaParser
  # Constructor to initialize the MediaParser
  # @param filepath string path of the file's location which needs to be parsed
  def initialize(_filepath)
    raise('implement me ;)')
  end

  # method to return a parsed hash summing up all the space each media type has taken
  # @return Hash of the format { :video => <int>, :audio => <int>, :image => <int>, :other => <int> }
  def parse
    raise('you really need to implement me ;)')
  end
end
