class CreateNewUserWorker
  include Sidekiq::Worker
  include Sidekiq::Status::Worker

  def perform
    User.create(email: "hiennv.th+#{ServerTime.now.day}@gmail.com", name: "Nguyen Van Hien")
  end
end
