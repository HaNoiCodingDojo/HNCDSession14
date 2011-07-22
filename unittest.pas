unit unittest;

interface

var     dd,dt:integer;
type    ar1d_int=array[1..maxint] of longint;
        ar1d_real=array[1..maxint] of extended;
        ar2d_int=array[1..maxint div 100,1..maxint div 100] of longint;
        ar2d_real=array[1..maxint div 100,1..maxint div 100] of extended;

procedure total;
procedure test_int(result1:longint;expected1:longint);
procedure test_real(result2:extended;expected2:extended);
procedure test_string(result3:string;expected3:string);
procedure test_1D_array_int(result4:ar1d_int;expected4:ar1d_int;n4:longint);
procedure test_1D_array_real(result5:ar1d_real;expected5:ar1d_real;n5:longint);
procedure test_2D_array_int(result6:ar2d_int;expected6:ar2d_int;n6:longint;m6:longint);
procedure test_2D_array_real(result7:ar2d_real;expected7:ar2d_real;n7:longint;m7:longint);

implementation

uses crt;

procedure test_int(result1:longint;expected1:longint);
 begin
        inc(dt);
        if result1=expected1 then
         begin
                inc(dd);
                textcolor(10);
                writeln('Passed.');
                textcolor(7);
         end
        else
         begin
                textcolor(12);
                write('Failed. ');
                textcolor(11);
                write(expected1);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result1);
                textcolor(7);
                writeln(' found.');
         end;
 end;

procedure test_real(result2:extended;expected2:extended);
 begin
        inc(dt);
        if result2=expected2 then
        begin
                inc(dd);
                textcolor(10);
                writeln('Passed.');
                textcolor(7);
         end
        else
         begin
                textcolor(12);
                write('Failed. ');
                textcolor(11);
                write(expected2:1:4);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result2:1:4);
                textcolor(7);
                writeln(' found.');
         end;
 end;

procedure test_string(result3:string;expected3:string);
 begin
        inc(dt);
        if result3=expected3 then
        begin
                inc(dd);
                textcolor(10);
                writeln('Passed.');
                textcolor(7);
         end
        else
         begin
                textcolor(12);
                write('Failed. ');
                textcolor(11);
                write(expected3);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result3);
                textcolor(7);
                writeln(' found.');
         end;
 end;

procedure test_1D_array_int(result4:ar1d_int;expected4:ar1d_int;n4:longint);
var i:integer;
 begin
        inc(dt);
        for i:=1 to n4 do
        if result4[i]<>expected4[i] then
         begin
                textcolor(12);
                write('Failed. ');
                textcolor(7);
                write('[');
                textcolor(14);
                write(i);
                textcolor(7);
                write('] : ');
                textcolor(11);
                write(expected4[i]);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result4[i]);
                textcolor(7);
                writeln(' found.');
                exit;
         end;
        inc(dd);
        textcolor(10);
        writeln('Passed.');
        textcolor(7);
 end;

procedure test_1D_array_real(result5:ar1d_real;expected5:ar1d_real;n5:longint);
var i:integer;
 begin
        inc(dt);
        for i:=1 to n5 do
        if result5[i]<>expected5[i] then
        begin
                textcolor(12);
                write('Failed. ');
                textcolor(7);
                write('[');
                textcolor(14);
                write(i);
                textcolor(7);
                write('] : ');
                textcolor(11);
                write(expected5[i]:1:4);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result5[i]:1:4);
                textcolor(7);
                writeln(' found.');
                exit;
         end;
        inc(dd);
        textcolor(10);
        writeln('Passed.');
        textcolor(7);
 end;

procedure test_2D_array_int(result6:ar2d_int;expected6:ar2d_int;n6:longint;m6:longint);
var i,j:integer;
 begin
        inc(dt);
        for i:=1 to n6 do
        for j:=1 to m6 do
        if result6[i,j]<>expected6[i,j] then
        begin
                textcolor(12);
                write('Failed. ');
                textcolor(7);
                write('[');
                textcolor(14);
                write(i);
                textcolor(7);
                write(',');
                textcolor(14);
                write(j);
                textcolor(7);
                write('] : ');
                textcolor(11);
                write(expected6[i,j]);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result6[i,j]);
                textcolor(7);
                writeln(' found.');
                exit;
         end;
        inc(dd);
        textcolor(10);
        writeln('Passed.');
        textcolor(7);
 end;

procedure test_2D_array_real(result7:ar2d_real;expected7:ar2d_real;n7:longint;m7:longint);
var i,j:integer;
 begin
        inc(dt);
        for i:=1 to n7 do
        for j:=1 to m7 do
        if result7[i,j]<>expected7[i,j] then
        begin
                textcolor(12);
                write('Failed. ');
                textcolor(7);
                write('[');
                textcolor(14);
                write(i);
                textcolor(7);
                write(',');
                textcolor(14);
                write(j);
                textcolor(7);
                write('] : ');
                textcolor(11);
                write(expected7[i,j]:1:4);
                textcolor(7);
                write(' expected but ');
                textcolor(12);
                write(result7[i,j]:1:4);
                textcolor(7);
                writeln(' found.');
                exit;
         end;
        inc(dd);
        textcolor(10);
        writeln('Passed.');
        textcolor(7);
 end;

procedure total;
 begin
        writeln;
        write('Total: ');
        textcolor(11);
        write(dt);
        textcolor(7);
        write(' Passed: ');
        textcolor(10);
        write(dd);
        textcolor(7);
        write(' Failed: ');
        textcolor(12);
        writeln(dt-dd);
        textcolor(7);
 end;

END.
