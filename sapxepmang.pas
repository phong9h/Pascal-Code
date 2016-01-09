uses crt;
var M: array[1..1000] of integer;
    max, i, j, n, tam: integer;
begin
  clrscr;
  write('Nhpa so phan tu muon nhap: ');
  readln(n);
  for i:=1 to n do
    begin
      write('Nhap phan tu thu ',i,': ');
      readln(M[i]);
    end;
  max := M[1];
  for i:=1 to n do
    begin
      if M[i] > max then
        max := M[i];
      for j:=n downto i+1 do
        if M[j] < M[i] then
          begin
            tam := M[i];
            M[i] := M[j];
            M[j] := tam;
          end;
    end;
  for i:=1 to n do
    write(M[i], ', ');
  writeln;
  writeln('Phan tu lon nhat la ',max);
  readln
end.
