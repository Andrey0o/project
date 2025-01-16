# frozen_string_literal: true

# Добавление никнейма пользователю
class AddUsernameToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :text
  end
end
