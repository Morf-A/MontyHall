win  = 0;
loss = 0;

for  i=1:1000
    % ������ �� ����� �� ��� ����
    prize = ceil(rand(1)*3);

    %����� �������� �����
    gamer = ceil(rand(1)*3);

    % ��������� ����� �� ������� ��� �����. 
    % ����� ������� ���������� ��� ������ �������������� �����.
    d = [1,2,3];
    if gamer == prize
        d(prize)=[];
        anotherDoor = d(ceil(rand(1)*2));
    else
        anotherDoor=prize;
    end

    % ������ ���o�
    %gamer = anotherDoor;


    if gamer == prize
        win = win+1;
    else
        loss=loss+1;
    end
end
fprintf('Win: %i\n', win);
fprintf('Loss: %i\n', loss);