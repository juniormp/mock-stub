# allowed messages return nil by default
describe "allow" do
  it "returns nil from allowed messages" do
   dbl = double("Some Collaborator") 

   allow(dbl).to receive(:foo)

   expect(dbl.foo).to be_nil
  end
 
  # messages can be allowed in bulk using 'receive_messages'
  it "configures return values for the provided messages" do
    dbl = double("Some Collaborator")
    
    allow(dbl).to receive_messages(:foo => 2, :bar => 3)

    expect(dbl.foo).to eq(2)
    expect(dbl.bar).to eq(3)
  end

end


