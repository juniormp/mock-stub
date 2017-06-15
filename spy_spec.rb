describe "have_received" do
  it 'passes whe the message has been received' do
    invitation = spy('invitation')
    invitation.deliver

    expect(invitation).to have_received(:deliver)
  end
end

class Invitation
  def self.deliver

  end
end

describe 'have_received 2' do
  it 'passes when the expectation is met' do
    allow(Invitation).to receive(:deliver)
    Invitation.deliver

    expect(Invitation).to have_received(:deliver)
  end
end

describe 'failure when the message has not been received' do
  it 'for a spy' do
    invitation = spy('invitation')
    expect(invitation).to have_received(:deliver)
  end

  example 'for a partial double' do
    allow(Invitation).to receive(:deliver)
    expect(Invitation).to have_received(:deliver)
  end
end
