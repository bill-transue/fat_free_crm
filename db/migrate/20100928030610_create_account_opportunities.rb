# frozen_string_literal: true

class CreateAccountOpportunities < ActiveRecord::Migration[4.2]
  def self.up
    create_table :account_opportunities do |t|
      t.references :account
      t.references :opportunity
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :account_opportunities
  end
end
