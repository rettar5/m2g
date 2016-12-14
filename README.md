# m2g
convert helper .mov to .gif(animation)  
[参考](http://qiita.com/syamaoka/items/4d4054cd75df00460925)

## installization
1. リポジトリをクローン
  - `$ git clone https://github.com/rettar5/m2g /usr/local/m2g`
1. ffmpegをインストール
  - `$ brew install ffmpeg`
1. ImageMagicをインストール
  - `$ brew remove --purge imagemagick`
  - `$ brew install fontconfig libtiff little-cms2 jasper libwmf librsvg liblqr openexr ghostscript webp`
  - `$ brew install imagemagick`
1. csrutilを無効化
  - OSをシャットダウンする。
  - `commandキー + R` を押しながらOSをリカバリモードで起動。
  - `$ csrutil disable`
  - OSを再起動
1. シンボリックリンクを作成
  - `$ sudo ln -s /usr/local/m2g/m2g /usr/bin/m2g`

## usage
- `$ m2g fileName.mov`
