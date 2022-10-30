def my_uniq(arr)
    raise ArgumentError unless arr.is_a?(Array)
    new_arr = []
    arr.each do |ele|
        new_arr << ele unless new_arr.include?(ele)
    end
    return new_arr
end

class Array
    def two_sum
        new_arr = []
        self.each.with_index do |ele, index|
            self.each.with_index do |ele_2, index_2|
                new_arr << [index, index_2] if ele + ele_2 == 0 && index_2 > index
            end
        end
        return new_arr
    end
        # hash = {}
        # new_arr = []
        # self.each.with_index do |ele, index|
        #     hash[ele] = index
        # end
        # hash.each.with_index do |key, value, index|
        #     neg = key * -1
        #     if hash.has_key?(neg)
        #         new_arr << [index, value]
        #     end
        # end
        # return new_arr
end

def my_transpose(matrix)
    new_mat = []
    for i in 0...matrix.length
        subarrays = []
        for j in 0...matrix.length
            subarrays << matrix[j][i]
        end
        new_mat << subarrays
    end
    return new_mat
end

def stock_picker(arr)
    potential_max = [0,1]
    arr.each.with_index do |ele_1, index_1|
        arr.each.with_index do |ele_2, index_2|
            new_difference = ele_2 - ele_1
            old_difference = arr[potential_max[1]] - arr[potential_max[0]]
            # puts "new difference is #{new_difference}"
            # puts "old difference is #{old_difference}"
            if new_difference > old_difference && index_2 > index_1 #this makes sure that you don't sell before you buy
                potential_max = [index_1,index_2]
            end
        end
    end
    return potential_max
end

# stocks = [550,12,1,24,34,23,45,23,12,3,4,2,3,5,4,534,500]
# p stock_picker(stocks)

def towers
    tower_0 = [8,7,6,5,4,3,2,1] # 8 discs in the first one. Biggest currently on bottom
    tower_1 = []
    tower_2 = []
    towers = [tower_0,tower_1,tower_2]
    game_over = false
    until game_over == true do
        fully_sorted = [1,2,3,4,5,6,7,8]
        game_over = true if tower_0 == fully_sorted || tower_1 == fully_sorted || tower_2 == fully_sorted
        render(towers)
        input = prompt_user()
        move(input, towers)
    end
end

def prompt_user()
    puts "please select a pile to move from and where to put it"
    puts "Separate by spaces. It should look like '0 2' or '1 2'"
    input = gets.chomp
    return input.split(" ").map {|ele| ele.to_i}
end

def move(input, towers)
    #tower to move from is towers[input[0]]
    #tower to move to is towers[input[1]]
    if towers[input[1]].empty? || # if the tower you are going to is empty...
        towers[input[0]].last < towers[input[1]].last #...or the value is big enough
        new_disc = towers[input[0]].pop #take off the last disc
        towers[input[1]].push(new_disc) #and place it on the new tower
    else
        puts "YOU CANNOT MOVE THERE!"
    end
end

def render(towers)
    p "tower_0: #{towers[0]}"
    p "tower_1: #{towers[1]}"
    p "tower_2: #{towers[2]}" #this way, the user can see it
    puts
end

towers
