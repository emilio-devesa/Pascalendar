program Pascalendar(input, output);{
	Pascalendar
	Command Line program written in Pascal ISO 10206 (Extended Pascal) that prints any year's calendar

	Emilio Devesa
}

function isLeapYear(year: integer): boolean;
begin
	isLeapYear:=((year mod 4 = 0) and not (year mod 100 = 0)) or (year mod 400 = 0);
end;

function getDayOfTheWeek(year:integer; month:integer; day: integer): integer;
{ https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week#Gauss's_algorithm }
var offsetOfCommonYear: array [1..12] of integer value [1:0; 2:3; 3:3; 4:6; 5:1; 6:4; 7:6; 8:2; 9:5; 10:0; 11:3; 12:5];
	offsetOfLeapYear: array [1..12] of integer value [1:0; 2:3; 3:4; 4:0; 5:2; 6:5; 7:0; 8:3; 9:6; 10:1; 11:4; 12:6];
	offset: integer;
begin
    if isLeapYear(year)
    then offset:=offsetOfLeapYear[month]
    else offset:=offsetOfCommonYear[month];
    getDayOfTheWeek:=(day + offset + 5*((year-1) mod 4) + 4*((year-1) mod 100) + 6*((year-1) mod 400)) mod 7;
end;

function getYear: integer;
var year: integer;
begin
    repeat
        write('Type Year (format: yyyy): ');
        readln(year);
        if (year<1)
        then write('Invalid year. ');
    until (1<=year) and (year<=MAXINT);
    getYear:=year;
end;

begin
	writeln(getYear);
end.