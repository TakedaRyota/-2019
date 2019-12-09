# 課題３レポート

ORG=imread('Airplane.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

原画像を読み込み，Airplane.jpgはカラー画像なので白黒濃淡画像に変換し，
表示した結果を図１に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_1.png)

図１　白黒濃淡原画像

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

輝度値が64以上の画素を1，その他を0に変換して表示した結果を図２に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_2.png)

図２　
