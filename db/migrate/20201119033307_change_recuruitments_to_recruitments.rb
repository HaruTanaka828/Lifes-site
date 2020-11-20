class ChangeRecuruitmentsToRecruitments < ActiveRecord::Migration[5.2]
  def change
  	rename_table :recuruitments, :recruitments
  end
end
