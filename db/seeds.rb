require 'faker'

# Faker::Quotes::Shakespeare.hamlet_quote # => "To be, or not to be: that is the question."

# Faker::Quotes::Shakespeare.as_you_like_it_quote # => "Can one desire too much of a good thing?."

# Faker::Quotes::Shakespeare.king_richard_iii_quote # => "Now is the winter of our discontent."

# Faker::Quotes::Shakespeare.romeo_and_juliet_quote # => "O Romeo, Romeo! wherefore art thou Romeo?."

10.times do 
    Conversation.create(title: Faker::Quotes::Shakespeare.hamlet_quote)
end

30.times do 
    Message.create(conversation_id: Conversation.all.sample.id, text: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
end

60.times do 
    Thought.create(message_id: Message.all.sample.id, text: Faker::Quotes::Shakespeare.as_you_like_it_quote)
end
