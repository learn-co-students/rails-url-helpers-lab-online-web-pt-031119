Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  def change
    add_column :students, :active, :boolean, :default => false
  end
  
end
