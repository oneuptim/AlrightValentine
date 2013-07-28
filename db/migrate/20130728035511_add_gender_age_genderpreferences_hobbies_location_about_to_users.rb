class AddGenderAgeGenderpreferencesHobbiesLocationAboutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :genderpreferences, :string
    add_column :users, :hobbies, :text
    add_column :users, :location, :string
    add_column :users, :about, :text
  end
end
