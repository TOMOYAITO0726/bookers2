class AddintroductionTousers < ActiveRecord::Migration[6.1]
  def change 
    add_colum :users, :introduction, :text 
  end
end
