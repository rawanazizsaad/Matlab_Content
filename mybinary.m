function mybinary

global GIm T1;

A=imread('peppers.png');

figure,imshow(A);

title('Original image');

B=zeros(size(A,1),size(A,2));

for l=1:size(A,1)

    for m=1:size(A,2)

        if(sum(A(l,m,:))>0)

            B(l,m)=1;

        end

    end

end

B=logical(B);

figure,imshow(B);
