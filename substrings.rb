flag_words = ["bomb", "target", "chaos", "knife", "gun", "crowd", "spy", "money", "explosive", "army", "police", "transport", "revenge", "death", "destruction", "capitalist", "dog", "fear", "pain", "plot", "shoot", "kill", "murder", "blood", "god", "burn", "hell", "ememies"]
def substrings(message, flag_words)
    arr1 = message.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").sort()
    arr2 = Array.new
    result = Hash.new(0)
    arr1.each do |word| arr2 << flag_words.filter{|element| word == element}
    end
    arr2.each {|match| result[match] += 1}
    puts result
    
end

