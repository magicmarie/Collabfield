module PostsHelper
  def create_new_post_partial_path
    if user_signed_in?
      'posts/partials/create_new_post/signed_in'
    else
      'posts/partials/create_new_post/not_signed_in'
    end
  end

  def all_categories_button_partial_path
    if params[:category].blank?
      'posts/partials/categories/all_selected'
    else
      'posts/partials/categories/all_not_selected'
    end
  end

  def no_posts_partial_path(posts)
    posts.empty? ? 'posts/partials/no_posts' : 'shared/empty_partial'
  end

  def post_format_partial_path
    current_page?(root_path) ? 'posts/post/home_page' : 'posts/post/branch_page'
  end

  def category_field_partial_path
    if params[:category].present?
      'posts/branch/search_form/category_field'
    else
      'shared/empty_partial'
    end
  end
end
