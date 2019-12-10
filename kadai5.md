# 課題５レポート

ORG=imread('Airplane.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

今までと同様に原画像を白黒濃淡画像に変換する。

![原画像]()
図１

判別分析法の手順を示す。
①全画素の濃度の平均値をmyu_Tとする。
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);

max_val = 0;
max_thres = 1;
for i=1:255
②濃度tでヒストグラムを２つに分ける。
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);

２つに分けた時の画素数をn_iとする。
n1 = sum(C1); %画素数の算出
n2 = sum(C2);

2つに分けた時の平均値をmyu_iとする。
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);

２つに分けた時の分散をsigma_iとする。
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);

③クラス内分散を算出する。
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出

④クラス間分散を算出する。
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出

⑤sigma_B^2/sigma_w^2が最大とするようにtを定める。
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;

判別分析法によって二値化された画像を図２に示す。

![原画像]()
図２　判別分析法による２値画像
