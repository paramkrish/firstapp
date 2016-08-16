require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "null title insertion" do
   	 post = Post.new(:name => "")
     assert post.valid?
   end

   test "short title insertion" do
   	 post = Post.new(:name => "Test")
     assert post.valid?
   end

   test "long title insertion" do
   	 post = Post.new(:name => "Test is really long title")
     assert post.valid?
   end

end
