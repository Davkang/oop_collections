class GolfScorecard
  def initialize(score_array, par_array)
    @hole_scores = score_array
    @par_scores = par_array

  end

  def score_per_hole
  end

  def score
    par_total = 0
    @par_scores.each do |score|
      par_total += score
    end

    score_total = 0
    @hole_scores.each do |score|
      score_total += score
    end
    score_total - par_total
  end

  def under_par?
    score < 0
  end

  def over_par?
    score > 0
  end

  def at_par?
    score == 0
  end

end

par = [4,4,3,4,5,4,3,4,4,4,3,4,4,5,3,4,4]
woods_scores = [
  [5,4,2,4,4,4,4,3,4,4,4,2,3,4,3,3,4,4],
  [3,4,3,4,4,4,3,4,4,4,4,3,4,4,5,2,4,5],
  [4,4,3,4,5,4,4,4,3,4,7,4,3,3,4,3,4,3]
]


championship = []
woods_scores.each do |score_array|
  card = GolfScorecard.new(score_array, par)
  championship << card

end

# require 'pry'
# binding.pry

championship_sum = 0
championship.each do |scorecard|
  puts scorecard.score
  championship_sum +=  championship.score
end

puts championship_sum
