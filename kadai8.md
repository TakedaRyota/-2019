# 課題８レポート

はじめに例の様に白黒濃淡画像を表示する。

ORG = imread('Airplane.jpg'); % 画像の読み込み　

ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai8_1.png)

図1　白黒濃淡画像

課題と同様に閾値128で二値化した画像を表示する。

IMG = ORG > 128; % 閾値128で二値化

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai8_2.png)

図２　二値化画像

IMG = bwlabeln(IMG);

imagesc(IMG); colormap(jet); colorbar; % 画像の表示

pause;

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai8_3.png)

図3　ラベリングした画像
