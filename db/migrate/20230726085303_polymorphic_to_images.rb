class PolymorphicToImages < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :images, :imageable, polymorphic: true
  end
end
