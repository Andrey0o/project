# frozen_string_literal: true

# Основная запись приложения
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :trackable

  scope :by_username, ->(username) { where(username:) if username.present? }

  validates :email, presence: true
end
