require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "humanize rating" do
     comment = Comment.new(:rating => '1_star').humanize_rating
     expected = "one star"
     actual = comment
     assert_equal = expected, actual
   end
end
