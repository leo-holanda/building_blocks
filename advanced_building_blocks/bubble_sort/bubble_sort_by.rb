load 'input_functions.rb'

class Array
    def swap!(a,b)
        self[a], self[b] = self[b], self[a]
    self
    end
end

def bubble_sort_by(wordList)
    is_sorted = false

    until is_sorted do
        is_sorted = true
        wordList.each_with_index { |current_word, index|
        if index == wordList.length - 1
            next
        elsif
            next_word = wordList[index + 1]
            is_greater = yield(current_word, next_word)
            if is_greater > 0
                is_sorted = false
                wordList.swap!(index, index + 1)
            end
        end
        }
    end

    return wordList
end

words_input = get_words
puts "\nWord's list"
print words_input
puts ""

sorted_words_input = bubble_sort_by(words_input) do |left, right|
    left.length - right.length
end

puts "\nSorted word's list"
print sorted_words_input
puts ""