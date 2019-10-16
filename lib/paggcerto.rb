# frozen_string_literal: true


# Version
require 'paggcerto/version'

module Paggcerto
  @api_base_domain = 'paggcerto.com.br'

  @log_level = nil
  @logger = nil

  class << self
    attr_accessor :api_key
    

    attr_reader :api_base_domain
    attr_reader :connect_base
  end

  LEVEL_DEBUG = Logger::DEBUG
  LEVEL_ERROR = Logger::ERROR
  LEVEL_INFO = Logger::INFO

  def self.log_level=(val)  
    if !val.nil? && ![LEVEL_DEBUG, LEVEL_ERROR, LEVEL_INFO].include?(val)
      raise ArgumentError,
            'log_level should only be set to `nil`, `debug` or `info`'
    end

    @log_level = val
  end

  def self.logger
    @logger
  end

  def self.logger=(val)
    @logger = val
  end
end

Paggcerto.log_level = ENV['PAGGCERTO_LOG_LEVEL'] unless ENV['PAGGCERTO_LOG_LEVEL'].nil?
