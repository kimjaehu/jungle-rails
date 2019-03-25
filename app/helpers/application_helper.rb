module ApplicationHelper
  def helper
    'I am a helper method'
  end

  def review_ratings(review)
    # review.rating.to_i.times
      # content_tag :span, class: "glyphicon glyphicon-star"
    
    # (5 - review.rating).to_i.times
      content_tag(:span, class: "glyphicon glyphicon-star-empty")
  end
end
