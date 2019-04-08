class ChatworkNotificationService
  require "chatwork"

  class << self
    def perform
      ChatWork.api_key = ENV["CHATWORK_API_KEY"]
      ChatWork::Message.create room_id: "144117143",
      body: "[To:1567299] Love You \nXin chào, đây là tin nhắn tự động của Hiển.
Vui lòng rep message qua account kia (yeu).
P/S: Tin nhắn sẽ được gửi auto 30' 1 lần :#)"
    end
  end
end
