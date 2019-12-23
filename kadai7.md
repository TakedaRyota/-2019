# 課題７レポート

標準画像「Airplane]を原画像とする。この画像は縦667画素，横1000画素による長方形のディジタルカラー画像である。

ORG = imread('Airplane.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

他の課題と同様に白黒濃淡画像に変換し表示する。

imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;

濃度ヒストグラムを表示する。

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai7_1.png)
図１ 濃度ヒストグラム

ORGをdouble型にする。

ORG = double(ORG);

濃度値の最小値と最大値を求め，
(濃度値-最小値) / (最大値-最小値) * 255の時の画像を表示する。
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

![原画像](https://github.com/TakedaRyota/Image-Processing-engineering-2019/blob/master/image/kadai7_2.png)
図2 濃度ヒストグラム
