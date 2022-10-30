require 'rspec'
require 'practice'

describe "#hello_world" do
    it "returns 'Hello, World!'" do
      expect(hello_world).to eq("Hello, World!")
    end
end

# describe Dessert do
#   let(:chef) { double("chef", :titleize => "Chef #{@name} the Great Baker", :bake => 10) }
#   subject(:dessert) {Dessert.new("pie",400,:chef)}

#   describe "#initialize" do
#     it "sets a type" do
#       expect(dessert.type).to eq("pie")
#     end

#     it "sets a quantity" do
#       expect(dessert.quantity).to eq(400)
#     end

#     it "starts ingredients as an empty array" do
#       expect(dessert.ingredients).to eq([])
#     end

#     it "raises an argument error when given a non-integer quantity" do
#       expect {Dessert.new("pie","asdf",:chef)}.to raise_error(ArgumentError)
#     end
#   end

#   describe "#add_ingredient" do
#     it "adds an ingredient to the ingredients array" do
#       dessert.add_ingredient("sugar")
#       expect(dessert.ingredients).to eq(["sugar"])
#     end
#   end

#   describe "#mix!" do
#     it "shuffles the ingredient array" do
#       old_arr = dessert.ingredients = ["a", "b", "c", "d", "e", "f"]
#       new_arr = old_arr.shuffle
#       expect(new_arr).to_not eq(old_arr)
#     end
#   end

#   describe "#eat" do
#     it "subtracts an amount from the quantity" do
#       dessert.eat(100)
#       expect(dessert.quantity).to eq(300)
#     end

#     it "raises an error if the amount is greater than the quantity" do
#       expect(dessert.eat(500).to raise_error(RuntimeError))
#     end
#   end

#   describe "#serve" do
#     it "contains the titleized version of the chef's name" do
#       expect(chef.titleize).to eq("Chef #{@name} the Great Baker")
#     end
#   end

#   describe "#make_more" do
#     it "calls bake on the dessert's chef with the dessert passed in" do
#       expect(chef).to receive(:bake)
#     end
#   end
# end
