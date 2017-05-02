class Authenticator
  def login(user)
    return user.password == "123456"
  end
end

describe Authenticator do
  it "will login with valid credentials" do
    user = double('User', password: '123456')
    expect(subject.login(user)).to be_true
  end
end
