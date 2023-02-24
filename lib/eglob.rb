# frozen_string_literal: true

require_relative "eglob/version"

module Eglob
  def sub(path)
    return path.gsub(/^\\/, "//").gsub(/\\/, '/')
  end

  def glob(path)
    return Dir.glob(sub(path))
  end

  module_function :sub, :glob
end