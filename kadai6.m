% 課題６　画像の二値化
% 下記のプログラムを参考にして画像を二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア
ORG=imread('Lenna.png'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像から白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause(2); % 2秒待つ


IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause(2); % 2秒待つ

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
