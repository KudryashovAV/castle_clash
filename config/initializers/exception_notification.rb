if ENV.key?("MAIL_ERRORS_TO")
  Whatever::Application.config.middleware.use ExceptionNotification::Rack,
    email: {
      email_prefix: "[castle_clash Error] ",
      sender_address: ENV["MAIL_FROM"],
      exception_recipients: ENV["MAIL_ERRORS_TO"].to_s.split(",")
    }
end
