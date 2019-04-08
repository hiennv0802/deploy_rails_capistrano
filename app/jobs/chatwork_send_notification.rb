class ChatworkSendNotification
  @queue = :chatwork_send_notification

  def self.perform
    ChatworkNotificationService.perform
  end
end
