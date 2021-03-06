require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should_not allow_value("carlos@woorx").for(:email)}
  it { should allow_value("carlos@woorx.mx").for(:email)}
  it { should validate_presence_of(:provider)}
  it { should validate_presence_of(:uid)}
end
