class PostsController < ApplicationController
  def index
    # モデルオブジェクトから全件取り出して変数に格納
    @posts = Post.all
  end

  def new
    # モデルオブジェクトを生成
    @post = Post.new
  end

  def create
    # モデルオブジェクトの生成と保存(引数は属性)
    @post = Post.new(post_params)

    if @post.save # モデルの保存に成功したかどうかを真偽値で返す
      redirect_to @post # 保存した@postの[show]にリダイレクトされる
    else
      #render
      # 指定したテンプレートを返す
      # 対応しているテンプレートを呼ぶ際は、このメソッドを呼ぶ必要はない
      # [http://railsdoc.com/controller#レンダリング(render)]

      # status(HTTPステータス) -> バリデーションエラー(unprocessable_entity)としてnewをレンダリング
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # find : データベースからデータを検索する
    @post = Post.find(params[:id])
  end

  def fav
    # params[:page]が存在しない場合の処理はindexアクションを実行
    if params[:page].nil?
      redirect_to :action => :index
    else # elseなくても動作する？
      # DBからparams[:id]をキーにして取得したモデルのfavをincrement
      Post.find(params[:id]).increment!(:fav)
      redirect_to :action => :show
    end

  end

  private
  def post_params
    # params が :post というキーを持ち、
    # params[:post] は :title, :text というキーを持つハッシュ(連想配列)であること を検証する
    params.require(:post).permit(:title, :text)
  end
end
