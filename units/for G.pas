Program first;
{подключаем библиотеку функций по работе с вводом/выводом}
uses crt;

var
 A: array[1..5] of integer;
 h: integer;
 g: smallint;


begin
  {установим индекс массива}
  h:= 1;
  clrscr;
  {внешний цикл для значений в ячейки массива: от большего к меньшему}
  for g:=5 downto 1 do
   {внутренний цикл по индексу}
    while h <= 5 do begin
       write('Индекс A[h] = ');
       writeln(h);
       write('Значение g = ');
       writeln(g);
       {заполним ячейку h массива А значением g}
       A[h]:= g;
       {изменим индекс массива}
       h:= h + 1;
       {прервем выполнение цикла}
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
       {перестановка местами A[j - 1] и A[j]}
       temp:= C[j - 1];
       C[j - 1]:= C[j];
       C[j]:= temp;
      end
 end {bubble};


Procedure greedy (var G: GRAPH; var newclr: LIST);
{ присваивает переменной newclr множество вершин
  графа G, которые можно окрасить в один цвет.
  LIST - список целых чисел}

  var
   found: boolean;
   v, w: integer;

  begin
      newclr:= 0;
      {v:= первая незакрашенная вершина из G}
      v:= G[0];
      while v <> null do
       begin
        found:= false;
        {первая вершина из newclr}
        w:= FIRST(newclr);

        while w <> null do
         begin
         {если существует ребро м/у v и w}
          if если существует ребро м/у v и w then
           found:= true;
           {взять следующую вершину из newclr}
           w:= NEXT(newclr);
        end;

        if found = false then
         begin
          пометить v цветом;
          {добавить v в newclr}
          INSERT(v, newclr);
         end

         {взять следующую незакрашенную вершину из G}
         v:= G[v+1];
       end;
  end; {greedy}

end;


end;

