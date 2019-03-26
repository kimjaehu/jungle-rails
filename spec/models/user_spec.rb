require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without matching password and password_confirmation" do
    user = User.create({
      first_name: "first",
      last_name: "last",
      email: "test@test.com",
      password: "password",
      password_confirmation: "password1"
      
    })
    expect(user.password).to_not eq(user.password_confirmation)
  end

  it "is not valid without unique Email" do
    user = User.create({
      first_name: "first",
      last_name: "last",
      email: "test@test.com",
      password: "password",
      })
    user1 = User.create({
      first_name: "first1",
      last_name: "last1",
      email: "Test@test.com",
      password: "password",
      })
      expect(user1).to_not be_valid
  end

  it "is not valid without a minimum 4 characters" do
    user = User.create({
      first_name: "first",
      last_name: "last",
      email: "test@test.com",
      password: "pas"
    })
    expect(user).to_not be_valid
  end
  
end

RSpec.describe User, type: :model do

  describe '.authenticate_with_credentials' do
    it 'is not valid user' do
    # examples for this class method here
    user = User.create({
      email: "email@email.ca",
      password: "email",
      password_confirmation: "email"
    })
    expect(user.authenticate_with_credentials('email@email.ca', '111111')).to_not be User
    end

    it 'is valid user with blank email address' do
      # examples for this class method here
      user = User.create({
        email: "email@domain.com",
        password: "email",
        password_confirmation: "email"
      })
      expect(user.authenticate_with_credentials(' example@domain.com ', 'email')).to be User
      end
  end

end
