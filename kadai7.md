# 課題７レポート

ORG = imread('Airplane.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

他の課題と同様に白黒濃淡画像に変換し表示する。

imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;

濃度ヒストグラムを表示する。

![原画像](
図１
