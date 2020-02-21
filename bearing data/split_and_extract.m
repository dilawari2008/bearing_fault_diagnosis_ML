x=size(de,1)
y= int64(x/3)-1
de1=de([1:y]);
de2=de([y+1:2*y]);
de=de([2*y+1:3*y]);

skew= skewness(de);
kurt= kurtosis(de);
std_dev= std(de);
rmsq= rms(de);
rang= range(de);
shannon= wentropy(de,'shannon');

s1= skewness(de1);
k1= kurtosis(de1);
std1= std(de1);
r1= rms(de1);
ra1= range(de1);
sh1= wentropy(de1,'shannon');

s2= skewness(de2);
k2= kurtosis(de2);
std2= std(de2);
r2= rms(de2);
ra2= range(de2);
sh2= wentropy(de2,'shannon');

M=[skew, kurt,std_dev,rmsq,rang,shannon; s1, k1, std1, r1, ra1,sh1; s2, k2, std2, r2, ra2, sh2]