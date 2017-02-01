# m2g
convert helper .mov to .gif(animation)  
[参考](http://qiita.com/syamaoka/items/4d4054cd75df00460925)

## installization
1. リポジトリをクローン
  - `$ git clone https://github.com/rettar5/m2g /usr/local/m2g`
1. ffmpegをインストール
  - `$ brew install ffmpeg`
1. __(もしffmpegが動かなければ)__ ImageMagicを再インストール
  - `$ brew remove --purge imagemagick`
  - `$ brew install fontconfig libtiff little-cms2 jasper libwmf librsvg liblqr openexr ghostscript webp`
  - `$ brew install imagemagick`
1. シンボリックリンクを作成
  - `$ ln -s /usr/local/m2g/m2g.sh /usr/local/bin/m2g`
1. 実行権限を付与
  - `$ chmod +x /usr/local/bin/m2g`

## usage
- `$ m2g -w width -f fileName.mov`

## notice
- OSをバージョンアップ(El Capitan -> Serria)すると、シンボリックリンクが消えてしまうことがあるようです。  
  - その際は `$ ln -s /usr/local/m2g/m2g /usr/local/bin/m2g` をもう一度実行してシンボリックリンクを張り直してください。
