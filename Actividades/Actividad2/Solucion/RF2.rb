class Message
  def self.factory(kind, *args, &block)
    case kind
    when :Audio
      AudioMessage.new(*args, &block)
    when :Email
      EmailMessage.new(*args, &block)
    when :SMS
      SMSMessage.new(*args, &block)
    end
  end

  def send
  end
end

class SMSMessage < Message
  def initialize(text, phone)
  end
end

class EmailMessage < Message
  def initialize(text, address)
  end
end

class AudioMessage < Message
  def initialize(file, phone)
    recorded = yield
    # write `recorded` to `@file`
    @file = file
  end

  def send
    # read from `@file`
    super
  end
end

message1 = Message.factory :SMS, 'Lorem Ipsum', '+56 9 8765 4321'
message2 = Message.factory :Audio, 'audio.wav', '+56 9 8765 4321' do
  'Hello world'
end

puts message1
puts message2
