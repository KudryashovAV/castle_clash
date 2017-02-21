class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :header  #article name
      t.string :body    #article body
      t.string :kind    #kind of article(blog or wiki)
      t.string :hashtag #for quick find
      t.string :video_link #for video

      t.timestamps
    end
  end
end
