# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :message
      t.references :user
      t.timestamps
    end
  end
end
