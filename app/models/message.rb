class Message < ApplicationRecord
  after_create_commit { MessageBroadCastJob.perform_later self }
end
