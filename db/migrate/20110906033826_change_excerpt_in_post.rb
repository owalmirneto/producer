class ChangeExcerptInPost < ActiveRecord::Migration
  def self.up
    change_columm :posts, :excerpt, :text
  end

  def self.down
    change_columm :posts, :excerpt, :string
  end
end

