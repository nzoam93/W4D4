require 'rspec'
require 'first_TDD_project'

describe "my_uniq" do
    let(:array) {[2,3,2,4,24,2,23,2,4,1,23,32,2,3,4,5]}
    let(:uniq_array) {my_uniq(array)}
    describe "parameters" do
        it "takes in an array" do
            expect {my_uniq([1,2,23,4])}.to_not raise_error
        end

        it "raises error if argument is not an array" do
            expect {my_uniq("adsf")}.to raise_error(ArgumentError)
        end
    end

    describe "remove duplicates" do
        it "ensures each element in the array is unique" do
            array.each do |ele|
                expect(uniq_array.count(ele)).to eq(1)
            end
        end
    end


    describe "return in same order" do
        it "final array has elements in the same order as original array" do
            expect(my_uniq(array)).to eq([2, 3, 4, 24, 23, 1, 32, 5])
        end
    end

    describe "returns new array" do
        it "returns a different array than the original array" do
            expect {my_uniq(array).to_not change(array)}
        end
    end
end

describe "#two_sum" do
    let(:array) {[-1,0,2,-2,1]}
    let(:paired_array) {array.two_sum}
    describe "find position pairs" do
        it "find pairs of positions whose elements sum to zero" do
            expect(paired_array).to eq([[0,4],[2,3]])
        end
    end

    describe "final elements are sorted" do
        it "pairs of elements are sorted 'dictionary-wise'" do
            expect(paired_array).to eq([[0,4],[2,3]])
        end
    end
end

describe "my_transpose" do
    let(:matrix) {[[0,1,2],[3,4,5],[6,7,8]]}
    describe "transposes a matrix" do
        it "switches rows and columns of a square matrix" do
            expect(my_transpose(matrix)).to eq([[0,3,6],[1,4,7],[2,5,8]])
        end
    end
end

describe "stock_picker" do
    let (:simple_stock) {[1,50,2,3,4]}
    let (:stock) {[550,12,1,24,34,23,45,23,12,3,4,2,3,5,4,534,500]}
    describe "picks the best days" do
        it "picks the two best stocks if they are very simple and never get better" do
            expect(stock_picker(simple_stock)).to eq([0,1])
        end
        it "returns array with indices of the days with the biggest diff between low and high" do
            expect(stock_picker(stock)).to eq([2,15])
        end
    end
end

describe "towers" do
    let (:towers = [[8,7,6,5,4,3,2,1],[],[]])
    describe "move" do
        it "should be able to move a piece from a tower to another"

        it "should not move if the tower you are moving to has a piece that is smaller"
    end

    describe "won?" do
        it "should return true if the array is in the opposite order as it started"
            #didn't end up coding it with a "win" function. I have a game-over boolean instead
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
