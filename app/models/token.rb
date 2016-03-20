class Token < ActiveRecord::Base
  belongs_to :user
  before_create :generate_token

  private
  def generate_token
    begin
    self.token = SecureRandom.hex #Número random al token
  end while Token.where(token: self.token).any?
  self.expires_at = 1.month.from_now #Se agrega fecha de expiración al token, 1 mes
end
