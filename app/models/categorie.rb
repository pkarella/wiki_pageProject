class Categorie < ActiveRecord::Base
  validates :title, :presence => true
end
