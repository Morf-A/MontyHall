win  = 0;
loss = 0;

for  i=1:1000
    % пр€чем за одной из них приз
    prize = ceil(rand(1)*3);

    %игрок выбирает дверь
    gamer = ceil(rand(1)*3);

    % ќткрываем дверь за которой нет приза. 
    % »ными словами определ€ем дл€ игрока альтернативную дверь.
    d = [1,2,3];
    if gamer == prize
        d(prize)=[];
        anotherDoor = d(ceil(rand(1)*2));
    else
        anotherDoor=prize;
    end

    % делаем выбoр
    %gamer = anotherDoor;


    if gamer == prize
        win = win+1;
    else
        loss=loss+1;
    end
end
fprintf('Win: %i\n', win);
fprintf('Loss: %i\n', loss);