#課題２レポート

標準画像「Airplane」を原画像とする。この画像は縦667画素，横1000画素による長方形のディジタルカラー画像である。

ORG=imread('Airplane.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示

によって，原画像はカラー画像であり，それを白黒濃淡画像に変換した画像を表示した結果を図１に示す。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai2_1.png)
図１　白黒濃淡画像

２階調の画像を生成する。

IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar;  axis image;

２階調にした画像を図２に示す。
白か黒の２色のみの画像となっていることがわかる。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai2_2.png)
図２　２階調画像



