# 課題９レポート

ORG = imread('Airplane.jpg'); % 画像の読み込み

ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;

同様に白黒濃淡画像を表示する。

![原画像]()

図１　白黒濃淡画像

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;

ノイズを乗せた画像を図２に示す。

![原画像]()

図2　ノイズあり画像

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;

図２の画像を平滑化フィルタで雑音除去を行った画像を示す。

![原画像]()

図３　平滑化フィルタ

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;

メディアンフィルタで雑音を除去した画像を示す。

![原画像]()

図４　メディアンフィルタ

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計

IMG = filter2(f,IMG,'same'); % フィルタの適用

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;

フィルタを設計して雑音除去した画像を示す。

![原画像]()

図５　フィルタの設計
