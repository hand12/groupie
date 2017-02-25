source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sdoc', group: :doc # Rubyのソースを読み取り、ブラウザで閲覧しやすいドキュメントを生成してくれる
gem 'turbolinks' # Railsのページ遷移高速化のためのgem
# gem 'haml-rails'
gem 'puma', '~> 3.0'
gem 'slim-rails'
gem 'therubyracer'

# UI/UX
gem 'bootstrap-sass' # bootstrap導入
gem 'coffee-rails'
gem 'font-awesome-rails' # アイコンタグを挿入するヘルパーメソッドを提供
gem 'jbuilder'
gem 'jquery-rails'
gem 'less-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0' # JSのコード軽量化ライブラリ。UglifyJS2をrubyで使えるようにしたもの
# gem 'wareki' #元号表示(平成や昭和など)に対応。案外使える

# ユーザー機能
gem 'devise' # ユーザー機能導入
gem 'devise-i18n' # devise日本語化

# gem 'bcrypt' #パスワード暗号化機能を提供してくれる。本番に上げる際はコメントアウトを外す。
# gem 'cancancan' #役割別に出来ること、出来ないことを定義できる。

# 各種ファイル設定用
# gem 'dotenv-rails' #ドットファイルの定義用
# gem 'config' #定数定義用
# gem 'enum_help' #enumの日本語化

# データベース
gem 'mysql2', '~> 0.3.18' # バージョン指定は適宜変更
gem 'rb-readline'

# seed用
# gem 'seed-fu'

# 検索機能
# gem 'ransack'

# ページネーション
# gem 'kaminari'

# パンくず
# gem 'gretel'

# アップロード用
# gem 'carrierwave'
# gem 'mini_magick' #画像リサイズ用のgem
# gem 'fog'

# フォーム
# gem 'bootstrap_form'
#
# 論理削除
# gem 'paranoia'
#
# Model拡張
# gem 'active_hash'
#
# 管理画面
# gem 'adminlte2-rails'

# サーバー
# gem 'unicorn'  実際にunicornを使う際はコメントアウトを外す

group :development, :test do
  # デバック用
  gem 'awesome_print'
  gem 'better_errors'
  gem 'byebug', platform: :mri
  gem 'hirb'
  gem 'letter_opener' # メール送信機能をローカルで試すためのgem
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'web-console', '~> 2.0'

  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

  # rspec
  gem 'factory_girl_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'

  # デプロイ
  # gem 'capistrano' #自動デプロイ用 デプロイ時に使用する際はコメントアウトを外す
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.0.5'
  gem 'rubocop', require: false
  gem 'slim_lint'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker'
end
