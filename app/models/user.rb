class User < ApplicationRecord
  attr_accessor :hash
  
  def self.from_omniauth(auth)
    user = where(provider: auth.provider, uid: auth.uid).first || create_from_omniauth(auth)
    user.hash = {
      info: auth["info"].to_hash,
      extra: auth["extra"].to_hash
    }
    user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end
end
