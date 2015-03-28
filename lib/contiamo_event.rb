require "contiamo_event/version"
require "contiamo_event/base"

module ContiamoEvent
  class Configuration
    attr_accessor :options, :token

    def initialize
      @options = {}
      @options[:verbose] = false
      @token = ''
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  def self.user(args)
    Fail 'Argument need to be a Hash' unless args.is_a? Hash
    base.post(:user, args)
  end

  def self.event(args)
    Fail 'Argument need to be a Hash' unless args.is_a? Hash
    base.post(:user, args)
  end

  def self.session(args)
    Fail 'Argument need to be a Hash' unless args.is_a? Hash
    base.post(:user, args)
  end

  def self.base
    @base ||= Base.new
  end
end
