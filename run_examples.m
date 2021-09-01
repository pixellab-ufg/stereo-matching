
addpath(genpath('../stereo-matching'));

%%
I1 = imread('tsukuba/scene1.row3.col3.ppm');
I2 = imread('tsukuba/scene1.row3.col4.ppm');

%%
[D, C_min, C] = block_matching(I1,I2,0,15,'SAD',1,1,1);
figure; imagesc(D); colormap gray;

%%
[D, C_min] = bl(I1,I2,0,15,'SAD',0,0,1,7,36,33,33);
figure; imagesc(D); colormap gray;

%%
[D, C_min] = bl_asym(I1,I2,0,15,'SAD',0,0,1,7,36,33,33);
figure; imagesc(D); colormap gray;

%%
[D, C_min] = bl_asym_no_spatial(I1,I2,0,15,'SAD',0,0,1,7,33,33);
figure; imagesc(D); colormap gray;

%%
[D, C_min] = bl_no_spatial(I1,I2,0,15,'SAD',0,0,1,7,33,33);
figure; imagesc(D); colormap gray;

%%
[D, C_min, C] = fw(I1,I2,0,15,'SSD',1,1,1);
figure; imagesc(D); colormap gray;

%%
[D, C_min, C] = gf(I1,I2,0,15,'TAD_C+G',1,1,1,19,0.0001);
figure; imagesc(D); colormap gray;

%%
[D, D2] = lo(I1,I2,0,15,'SAD',0,0,1,0.009);
figure; imagesc(D); colormap gray;

%%
[dl,dr] = ml(I1,I2,0,15,'SSD',0,0,1,0.0009);
figure; imagesc(dl); colormap gray;

%%
[dl,dr] = mlmh(I1,I2,0,15,'SSD',1,1,1,0.0009);
figure; imagesc(dl); colormap gray;

%%
[D, all_maps] = mrpg(rgb2lab(I1),rgb2lab(I2),0,15,'SSD',1,1,1,3,9,[1 1;1 1],6,35,35);
figure; imagesc(D); colormap gray;

%%
[D, all_maps] = mrpg_asym(I1,I2,0,15,'TAD_C+G',1,1,1,3,9,[1 1;1 1],6,35,35);
figure; imagesc(D); colormap gray;

%%
[D, all_maps] = mrpg_asym_v2(I1,I2,0,15,'TAD_C+G',1,1,1,3,9,[1 1;1 1],6,35,35);
figure; imagesc(D); colormap gray;

%%
[D, D1, D2] = sb(I1,I2,0,15,'TAD_C+G',12,12,1,0.01);
figure; imagesc(D); colormap gray;

%%
[D, C_min, C] = sw(I1,I2,0,15,'SSD',2,2,1);
figure; imagesc(D); colormap gray;

%%
[D, C_min, C] = vw(I1,I2,0,15,'BTSAD',1,1,1,4,31,1.5,7,-2);
figure; imagesc(D); colormap gray;



