class ChatworkNotificationService
  require "chatwork"

  class << self
    def perform
      content = "\nStart time: #{ServerTime.now}, batch send chatwork message\n"
      content = send_message(content)
      write_log content
    end

    private
    def send_message content
      ChatWork.api_key = ENV["CHATWORK_API_KEY"]
      ChatWork::Message.create room_id: "144117143",
      body: "[To:1567299] Love You \nXin chào, đây là tin nhắn tự động của Hiển.
Vui lòng rep message qua account kia (yeu).
P/S: Tin nhắn sẽ được gửi auto 30' 1 lần :#)"
      content << "Success, send chatwork message at: #{ServerTime.now}"
      content
    end

    def write_log message
      logger = Logger.new Rails.root.join("log", "batch_send_chatwork_message.log")
      logger.info message
    end
  end
end
