class Card < ApplicationRecord
  has_attached_file :image,
                    styles: { :medium => "200x200>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /^image\/(png|gif|jpeg|jpg)/

end
