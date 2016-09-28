class AddLogoAndCssToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :logo, :string
    add_column :styles, :css, :string
  end
end
