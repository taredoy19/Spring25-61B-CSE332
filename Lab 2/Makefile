input = input.txt
output = output.txt

main: cal.l
	flex cal.l
	gcc lex.yy.c
	a < $(input) > $(output)