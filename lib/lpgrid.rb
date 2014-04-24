require 'csv'
require 'yaml'
require 'lpgrid/version'
require 'lpgrid/configuration'
require 'lpgrid/grid'

module Lpgrid
  attr_reader :config

  def self.config
    @config ||= Configuration.new
  end

  def self.root
    Pathname.new(File.expand_path '../..', __FILE__)
  end
end
