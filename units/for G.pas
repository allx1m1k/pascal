Program first;
{������砥� ������⥪� �㭪権 �� ࠡ�� � ������/�뢮���}
uses crt;

var
 A: array[1..5] of integer;
 h: integer;
 g: smallint;


begin
  {��⠭���� ������ ���ᨢ�}
  h:= 1;
  clrscr;
  {���譨� 横� ��� ���祭�� � �祩�� ���ᨢ�: �� ����襣� � ����襬�}
  for g:=5 downto 1 do
   {����७��� 横� �� �������}
    while h <= 5 do begin
       write('������ A[h] = ');
       writeln(h);
       write('���祭�� g = ');
       writeln(g);
       {�������� �祩�� h ���ᨢ� � ���祭��� g}
       A[h]:= g;
       {������� ������ ���ᨢ�}
       h:= h + 1;
       {��ࢥ� �믮������ 横��}
       break;
     end;


    writeln('------');
    writeln(A[1]);
    writeln(A[2]);
    writeln(A[3]);
    writeln(A[4]);
    writeln(A[5]);
  end.

Procedure bubble(var C:array  of smallint );
 var
  i, j, temp: smallint;
 begin
   for i:= 1 to 5 - 1 do
    for j:= 5 downto i + 1 do
     if C[j - 1] > C[j] then
      begin
       {����⠭���� ���⠬� A[j - 1] � A[j]}
       temp:= C[j - 1];
       C[j - 1]:= C[j];
       C[j]:= temp;
      end
 end {bubble};


Procedure greedy (var G: GRAPH; var newclr: LIST);
{ ��ᢠ����� ��६����� newclr ������⢮ ���設
  ��� G, ����� ����� ������ � ���� 梥�.
  LIST - ᯨ᮪ 楫�� �ᥫ}

  var
   found: boolean;
   v, w: integer;

  begin
      newclr:= 0;
      {v:= ��ࢠ� ������襭��� ���設� �� G}
      v:= G[0];
      while v <> null do
       begin
        found:= false;
        {��ࢠ� ���設� �� newclr}
        w:= FIRST(newclr);

        while w <> null do
         begin
         {�᫨ ������� ॡ� �/� v � w}
          if �᫨ ������� ॡ� �/� v � w then
           found:= true;
           {����� ᫥������ ���設� �� newclr}
           w:= NEXT(newclr);
        end;

        if found = false then
         begin
          ������� v 梥⮬;
          {�������� v � newclr}
          INSERT(v, newclr);
         end

         {����� ᫥������ ������襭��� ���設� �� G}
         v:= G[v+1];
       end;
  end; {greedy}

end;


end;

