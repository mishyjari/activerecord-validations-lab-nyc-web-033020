class PostValidator < ActiveModel::Validator
  
  def validate(record)
    clickbait_titles = ["Won't Believe", "Secret", "Top ", "Guess"]
    unless clickbait_titles.any? { |w| record.title.include?(w) }
      record.errors[:title] << 'Not clickbait'
    end if record.title
  end

end
