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

describe "A negative message expectation" do
  it "fails when the message is received" do
    dbl = double("Some collaborator").as_null_object

    expect(dbl).not_to receive(:foo)

    dbl.foo
  end

  it "passes if the message is never received" do
    dbl = double("Some Collaborator").as_null_object

    expect(dbl).not_to receive(:foo)
  end
end
