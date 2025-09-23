# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author, counter_cache: true
  has_many :orders
  has_many :customers, through: :orders
  has_many :reviews, dependent: :destroy


  scope :costs_more_than, ->(amount) { where('price > ?', amount) if amount.present? }
  scope :recent, -> { where(year_published: 10.years.ago.year..) }
  scope :in_print, -> { where(out_of_print: false) }
  scope :out_of_print, -> { where(out_of_print: true) }

  validates :title, presence: true
end
