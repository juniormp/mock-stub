describe "An unfulfilled positive message expectation" do
  it "triggers a failure" do
    dbl = double("Some Collaborator")
    expect(dbl).to receive(:foo)
  end
end

describe "A fulfilled positive message expectation" do
  it "passes" do
    dbl = double("Some Collaborator")
    
    expect(dbl).to receive(:foo)

    dbl.foo
  end
end
