class CreateYeahs < ActiveRecord::Migration
  def change
    create_table :yeahs do |t|
      t.datetime :wtf

      t.timestamps
    end
  end
end
