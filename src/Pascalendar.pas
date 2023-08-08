program Pascalendar(input, output);{
	Pascalendar
	Command Line program written in Pascal ISO 10206 (Extended Pascal) that prints any year's calendar

	Emilio Devesa
}

function isLeapYear(year: integer): boolean;
begin
	isLeapYear:=((year mod 4 = 0) and not (year mod 100 = 0)) or (year mod 400 = 0);
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