class Basket < ApplicationRecord

    validates :title, presence: true
    validates :title, length: {minimum: 1}

    has_many :items,
        primary_key: :id,
        foreign_key: :basket_id,
        class_name: :Item

end