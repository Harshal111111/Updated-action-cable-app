class User < ApplicationRecord

  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Test1', 'Test2', 'Test3', 'Test14']
    nouns = ['User']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end

end
