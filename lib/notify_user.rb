require "notify_user/engine"

module NotifyUser

  mattr_accessor :mailer_sender
  @@mailer_sender = nil

  # Used to set up NotifyUser from the initializer.
  def self.setup
    yield self
  end

  def self.send_notification(type)
    type.camelize.constantize.new
  end
end

Gem.find_files("notify_user/channels/**/*.rb").each { |path| require path }