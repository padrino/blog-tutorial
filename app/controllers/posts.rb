BlogTutorial::App.controllers :posts do
  get :index, :provides => [:html, :rss, :atom] do
    @posts = Post.reverse_order(:created_at).all
    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post[id: params[:id]]
    render 'posts/show'
  end
end
