class AddImageFilenameToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :image_filename, :string
  end
end
