class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, uniqueness: true, numericality: true,
                    length: { minimum: 11, maximum: 15 }
  validates :twitter, presence: true, uniqueness: true
end
