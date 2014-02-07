program kino;
uses wincrt;
var a:array[1..10000] of integer;
    m:array[1..10000] of integer;
    b:array[1..80] of integer;
    c:array[1..80] of integer;
    d:array[1..80] of integer;
    r:array[1..80] of integer;
    x:array[1..80] of real;
    v:array[1..80] of real;
    e:array[1..80] of real;
    z,t,i,j,l,p:integer;
    k:real;
    n:char;
    u:text;
    filename:string;

BEGIN

 writeln('*******************************************************************************');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*      *     *           *          *          *           *******            *');
 writeln('*      *    *            *          **         *          *       *           *');
 writeln('*      *   *             *          * *        *          *       *           *');
 writeln('*      *  *              *          *  *       *          *       *           *');
 writeln('*      * *               *          *   *      *          *       *           *');
 writeln('*      **                *          *    *     *          *       *           *');
 writeln('*      * *               *          *     *    *          *       *           *');
 writeln('*      *  *              *          *      *   *          *       *           *');
 writeln('*      *   *             *          *       *  *          *       *           *');
 writeln('*      *    *            *          *        * *          *       *           *');
 writeln('*      *     *           *          *         **          *       *           *');
 writeln('*      *      *          *          *          *           *******            *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*******************************************************************************');
 writeln;
 writeln('                            press [ ENTER ] to continue ');
 write('                              press [ F ] to format ');
 read(n);
 readln;

if n='F' then
begin

 ClrScr;
 writeln;
 writeln;
 writeln;
 writeln;
 writeln;
 writeln;
 writeln;
 writeln('          AMA 8ES NA DIAGRAFOUN OLES OI METRHSEIS SOU PATA KWDIKO: ');
 write('                                    ');
 read(i);
 readln;
  if i=1134 then
  begin

   filename:='c:\kino.txt';
   assign(u,filename);
   rewrite(u);
   close(u);

   filename:='c:\kino1.txt';
   assign(u,filename);
   rewrite(u);
   close(u);

   writeln;
   writeln('          KA8ARISMOS METRHSEWN, TO KINO GURISE STHN ARXIKH TOU KATASTASH');
   writeln;
   writeln('               C:\kino.txt merikwn metrhsewn periexei 0 metrhseis');
   writeln('               C:\kino1.txt genikwn metrhsewn periexei 0 metrhseis');
  end
  else
  begin
   writeln;
   writeln('                                FORMAT FAILED');
  end;
end;

if n=char(13) then
begin

 filename:='c:\kino.txt';
 assign(u,filename);
 reset(u);
  l:=1;
  repeat
   readln(u,t);
   a[l]:=t;
   l:=l+1;
  until eof(u);
 close(u);

 for i:=1 to 80 do
 begin
  b[i]:=0;
  c[i]:=i;
 end;

 for i:=1 to 10000 do
 begin
  for j:=1 to 80 do
  begin
   if a[i]=c[j] then
   begin
    b[j]:=b[j]+1;
   end;
  end;
 end;

 for i:=1 to 80 do
 begin
  for j:=80 downto i do
  begin
   if b[i]<b[j] then
   begin
    z:=b[i];
    b[i]:=b[j];
    b[j]:=z;

    z:=c[i];
    c[i]:=c[j];
    c[j]:=z;
   end;
  end;
 end;

 for i:=1 to 80 do
 begin
  x[i]:=b[i]*100/((l-1)/20);
 end;
                                  
 writeln('          ------------- strigmhs -- 10 prwta -------------------------');
 for i:=1 to 20 do
 begin
  if i=11 then
  begin
   writeln;                         
   writeln('          -------------- stigmhs -- 10 epomena -----------------------');
  end;
  writeln('        ( ',c[i],' ) emfanisthke ',b[i],' fores me pi8anothta ',x[i]:0:2,'%',' stis ',((l-1)/20):0:0,' klhrwseis');
 end;

 readln;

 filename:='c:\kino.txt';
 assign(u,filename);
 reset(u);
  l:=0;
  repeat
   readln(u,t);
   l:=l+1;
   m[l]:=t;
  until eof(u);
 close(u);

 filename:='c:\kino1.txt';
 assign(u,filename);
 append(u);
  for i:=1 to l do
  begin
   writeln(u,m[i]);
  end; 
 close(u);

 assign(u,filename);
 reset(u);
  l:=1;
  repeat
   readln(u,t);
   a[l]:=t;
   l:=l+1;
  until eof(u);
 close(u);  

 if (l+1)>10000 then
 begin
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln('            !!! PROSOXH TO PROGRAMMA XANEI THN A3IOPISTIA TOU !!!');
  writeln;
  writeln('          PREPEI NA GINEI FORMAT GIATI NA NOUMERA 3EPERASAN TA 10000');
  writeln('                            KAI OLA TEINOUN STO 50%');
  readln;
 end;

 for i:=1 to 80 do
 begin
  b[i]:=0;
  d[i]:=i;
 end;

 for i:=1 to 10000 do
 begin
  for j:=1 to 80 do
  begin
   if a[i]=d[j] then
   begin
    b[j]:=b[j]+1;
   end;
  end;
 end;  

 for i:=1 to 80 do
 begin
  for j:=80 downto i do
  begin
   if b[i]<b[j] then
   begin
    z:=b[i];
    b[i]:=b[j];
    b[j]:=z;

    z:=d[i];
    d[i]:=d[j];
    d[j]:=z;
   end;
  end;
 end;

 for i:=1 to 80 do
 begin
  v[i]:=b[i]*100/((l-1)/20);
 end;

 writeln('          -------------- GENIKA -- APO8HKEUMENA -- 10 prwta ---------------');
 for i:=1 to 20 do
 begin
  if i=11 then
  begin
   writeln;
   writeln('          -------------- GENIKA -- APO8HKEUMENA -- 10 epomena --------------');
  end;
  writeln('        ( ',d[i],' ) emfanisthke ',b[i],' fores me pi8anothta ',v[i]:0:2,'%',' stis ',((l-1)/20):0:0,' klhrwseis');
 end;

 readln;

 p:=0;
 for i:=1 to 80 do
 begin
  for j:=1 to 80 do
  begin
   if c[i]=d[j] then
   begin
    p:=p+1;
    e[p]:=(x[i]*85/100)+(v[j]*15/100);
    r[p]:=d[j];
   end;
  end;
 end;

 for i:=1 to 80 do
 begin
  for j:=80 downto i do
  begin
   if e[i]<e[j] then
   begin
    k:=e[i];
    e[i]:=e[j];
    e[j]:=k;

    z:=r[i];
    r[i]:=r[j];
    r[j]:=z;
   end;
  end;
 end;

 writeln('  -- PROTEINOMENA 10 prwta BASH SUGGRISHS 15% paliwn kai 85% teleutaiwn --');
 for i:=1 to 20 do
 begin
  if i=11 then
  begin
   writeln;
   writeln('  -- PROTEINOMENA 10 epomena BASH SUGGRISHS 15% paliwn kai 85% teleutaiwn --');
  end;
  writeln('                ( ',r[i],' ) exei SUGKENTROTIKH pi8anothta ',e[i]:0:2,'%');
 end;

 readln;

 filename:='C:\kino.txt';
 assign(u,filename);
 rewrite(u);
 close(u);
 writeln('*******************************************************************************');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*      *     *           *          *          *           *******            *');
 writeln('*      *    *            *          **         *          *       *           *');
 writeln('*      *   *             *          * *        *          *       *           *');
 writeln('*      *  *              *          *  *       *          *       *           *');
 writeln('*      * *               *          *   *      *          *       *           *');
 writeln('*      **                *          *    *     *          *       *           *');
 writeln('*      * *               *          *     *    *          *       *           *');
 writeln('*      *  *              *          *      *   *          *       *           *');
 writeln('*      *   *             *          *       *  *          *       *           *');
 writeln('*      *    *            *          *        * *          *       *           *');
 writeln('*      *     *           *          *         **          *       *           *');
 writeln('*      *      *          *          *          *           *******            *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*                                                                             *');
 writeln('*******************************************************************************');
 writeln;
 writeln('          TO KINO.TXT KA8ARISTIKE, PERASTHKAN OI METRHSEIS STIS GENIKES');

end;

END.
