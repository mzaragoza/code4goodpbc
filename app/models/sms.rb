class Sms

  def self.send_message(recipient, message)
    #if Rails.env.test? || Rails.env.development?
      unless ENV['TWILIO_TEST_NUMBERS'].include?(recipient)
        recipient = ENV['TWILIO_TEST_NUMBER']
      end
    #end

    twilio_client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])

    puts 'Send SMS'
    twilio_client.account.messages.create(
      from: ENV['TWILIO_FROM_PHONE'],
      to: recipient,
      body: message
    )
  end
end

