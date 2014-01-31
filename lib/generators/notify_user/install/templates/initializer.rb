NotifyUser.setup do |config|

  # Override the email address from which notifications appear to be sent.
  config.mailer_sender = "please-change-me-at-config-initializers-notify-user@example.com"

  # NotifyUser will call this within NotificationsController to ensure the user is authenticated.
  config.authentication_method = :authenticate_user!

  # NotifyUser will call this within NotificationsController to return the current logged in user.
  config.current_user_method = :current_user

end