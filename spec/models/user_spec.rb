require 'rails_helper'

# rspec spec/models/user_spec.rb

RSpec.describe User, type: :model do

    it "is valid with valid attributes" do
      user = User.new(username: "example", email: "example@example.com")
      expect(user).to be_valid
    end

    it "is not valid without a username" do
      user = User.new(email: "example@example.com")
      expect(user).to_not be_valid
    end

    # Adicione mais testes conforme necessário
end
