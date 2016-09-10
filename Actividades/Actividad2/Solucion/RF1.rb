class User
  attr_accessor :username
  def initialize(username)
    @username = username
  end
end

class SystemApplication
  def status(user)
    "#{user.username} ok"
  end
end

class AuthProxy
  def initialize(subject, authed = [])
    @subject = subject
    @authed = authed
  end

  # Force first argument to be a user instance
  def method_missing(method, user, *args, &block)
    raise StandardError, 'Not allowed' unless @authed.include? user.username
    @subject.send(method, user, *args, &block)
  end
end

user1 = User.new('mrpatiwi')
user2 = User.new('rasaffie')
allowed = %w(mrpatiwi nkawasg sasalatart)

app = SystemApplication.new
puts app.status(user1) # mrpatiwi ok
puts app.status(user2) # rasaffie ok

app = AuthProxy.new(app, allowed)
puts app.status(user1) # mrpatiwi ok
puts app.status(user2) # Not allowed (StandardError)
