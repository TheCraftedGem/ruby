class Acronym 

  def self.abbreviate(input)
    split_words = input.upcase.split
    acronym_array = split_words.map do |w|
      if w.split("-").count > 1 
        w.split("-").map { |word| word[0]}
      else
        w[0]
      end
    end

    acronym_array.delete_if do |char| 
      char == "-"
    end.join
  end
end