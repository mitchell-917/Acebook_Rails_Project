# frozen_string_literal: true

class Post < ApplicationRecord

  has_many :likes, dependent: :destroy
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  belongs_to :user

end
