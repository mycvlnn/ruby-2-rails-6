class CreateAssembliesPartsJoin < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly, null: false, foreign_key: true
      t.belongs_to :part, null: false, foreign_key: true
      t.timestamps
    end

    add_index :assemblies_parts, %i[assembly_id part_id], unique: true
  end
end
