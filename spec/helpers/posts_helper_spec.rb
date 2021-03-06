require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do
  context '#create_new_post_partial_path' do
    it "returns a signed_in partial's path" do
      allow(helper).to receive(:user_signed_in?).and_return(true)
      expect(helper.create_new_post_partial_path). to (eq 'posts/partials/create_new_post/signed_in')
    end

    it "returns a signed_in partial's path" do
      allow(helper).to receive(:user_signed_in?).and_return(false)
      expect(helper.create_new_post_partial_path). to (eq 'posts/partials/create_new_post/not_signed_in')
    end
  end

  context '#all_categories_button_partial_path' do
    it "returns an all_selected partial's path" do
      controller.params[:category] = ''
      expect(helper.all_categories_button_partial_path).to (eq 'posts/partials/categories/all_selected')
    end

    it "returns an all_not_selected partial's path" do
      controller.params[:category] = 'category'
      expect(helper.all_categories_button_partial_path).to (eq 'posts/partials/categories/all_not_selected')
    end
  end

  context '#no_posts_partial_path' do
    it "returns a no_posts partial's path" do
      expect(helper.no_posts_partial_path([])).to (eq 'posts/partials/no_posts')
    end

    it "returns an empty partial's path" do
      expect(helper.no_posts_partial_path([1])).to (eq 'shared/empty_partial')
    end
  end

  context '#post_format_partial_path' do
    it "returns a home_page partial's path" do
      allow(helper).to receive(:current_page?).and_return(true)
      expect(helper.post_format_partial_path).to (eq 'posts/post/home_page')
    end

    it "returns a branch_page partial's path" do
      allow(helper).to receive(:current_page?).and_return(false)
      expect(helper.post_format_partial_path).to (eq 'posts/post/branch_page')
    end
  end
end
