uses crt;
var A: real;
    n, i, x: byte;
begin
  clrscr;
  write('Nhap n: ');
  readln(n);
  x := 8;
  A := 2/3 + 3/8;
  for i:=4 to n+1 do
    begin
      x := i + i - 1 + x;
      A := A + i/x;
    end;
  writeln(A:2:6);
  readln
end.
