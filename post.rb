class Post
  def initialize(params)
    @params = params
  end

  def safe_title
    make_safe @params[:title]
  end

  private

  def make_safe(str)
    str.gsub(/[^\w]/, '-')
  end
end

new_post = Post.new('title' => 'new post',
                    'body'  => 'your text here')

puts new_post.safe_title
