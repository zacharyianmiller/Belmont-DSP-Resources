vec=randi(99,1,7); temp=0;
disp(vec);

N=length(vec);

for i=1:N-1
    for j=i+1:N
        if vec(j)<vec(i)
            temp=vec(j);
            vec(j)=vec(i);
            vec(i)=temp;
        end
    end
end

disp(vec);



