describe "A test double" do
 # Doubles are strict by default
 it "raises errors when messages not allowed or expected are received" do
    dbl = double("Some Collaborator")
    dbl.foo
  end

 # A hash can be used to define allowed messages and return values
 it "returns canned responses from the methods named in the provided hash" do
   dbl = double("Some collaborator", :foo => 3, :bar => 4)

   expect(dbl.foo).to eq(3)
   expect(dbl.bar).to eq(4)
 end
end


