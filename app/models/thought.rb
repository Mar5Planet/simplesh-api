class Thought < ApplicationRecord
    belongs_to :message
    validates :message_id , presence: true
    validates :text , presence: true
end
