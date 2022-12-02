class MovieSummarySerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :description, :poster_url, :category, :discount
  belongs_to :director
  has_many :reviews

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end

end
  