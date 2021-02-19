FactoryBot.define do
 factory :random_conversations, class: Conversation do
      title { "conversation test"}
    end
    factory :random_messages, class: Message do
        conversation_id { Conversation.create('title': 'sample').id}
        text {"sample text"}
     end
     factory :random_thoughts, class: Thought do
        message_id { Message.create('conversation_id': Conversation.create('title': 'sample').id, 'text': 'sample').id}
        text {"sample text"}
     end

  end