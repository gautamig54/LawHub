class Page < ApplicationRecord
  has_paper_trail

  def to_param
    slug
  end

  # before_create do
  #   self.slug = self.title.gsub(" ", "_")
  # end

  def self.search(search)
    where("title ILIKE ? OR body ILIKE ? OR slug ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
