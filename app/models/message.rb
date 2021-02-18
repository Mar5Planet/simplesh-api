class Message < ApplicationRecord
    belongs_to :conversation
    has_many :thoughts
    validates :conversation_id, presence: true
    validates :text, presence: true
end
