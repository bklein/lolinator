class Lul < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :lulpic, :lulnik_id
  mount_uploader :lulpic, LulpicUploader
  belongs_to :lulnik
end
