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
輝度値が６４以上の画素が白になっている。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_2.png)

図２　閾値64の２値画像

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

輝度値が96以上の画素を1，その他を0に変換して表示した結果を図２に示す。
輝度値が96以上の画素が白になっている。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_3.png)

図3　閾値96の２値画像

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

輝度値が128以上の画素を1，その他を0に変換して表示した結果を図２に示す。
輝度値が128以上の画素が白になっている。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_4.png)

図4　閾値128の２値画像

IMG = ORG > 192; % 輝度値が192以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

輝度値が192以上の画素を1，その他を0に変換して表示した結果を図２に示す。
輝度値が192以上の画素が白になっている。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai3_4.png)

図5　閾値192の２値画像
