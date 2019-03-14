class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last 
  end

  def personal_best
    @scores.sort.last
  end
 
  def personal_top_three
    @scores.sort.reverse[0..2]
  end
  
end