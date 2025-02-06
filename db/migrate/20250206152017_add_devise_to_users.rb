# frozen_string_literal: true

# Добавление девайза пользователю
class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      t.string :encrypted_password, null: false, default: ""

      # Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :last_sign_in_at
    end

    add_index :users, :email, unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
