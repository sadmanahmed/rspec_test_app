require 'rails_helper'
include PostsHelper
RSpec.describe PostsHelper, type: :helper do

  it 'assigns a user to posts' do
    creator = User.first_or_create!(email: 'dean@example.com',password: 'password', password_confirmation: 'password')
    @post = Post.new(title: "My title",body: "My body",views: 1)

    returnded_post = assign_post_creator(@post,creator)

    expect(returnded_post.user).to be(creator)
  end
end
