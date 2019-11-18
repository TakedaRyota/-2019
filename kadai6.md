# 課題6レポート

標準画像「Airplane]を原画像とする。この画像は縦667画素，横1000画素による長方形のディジタルカラー画像である。

ORG=imread('Airplane.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像から白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって，原画像はカラー画像であり，それを白黒濃淡画像に変換した画像を表示した結果を図１に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai6_1.png)
図１　白黒濃淡画像

１２８により二値化を行う。

IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

１２８による二値化を行った画像を表示した結果を図２に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai6_2.png)
図２　128による二値化画像

ディザ法により二値化を行う。

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

ディザ法による二値化を行った画像を表示した結果を図３に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai6_3.png)
図３　ディザ法による二値化画像

ディザ法の方がより鮮明に二値化されていることがわかる。
