OBJ = main.o sound.o
APPNAME = test.a
TAR = final.tar

$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)

%.o : %.c
	gcc -c -o $@ $<

clean  :
	rm $(OBJ) $(APPNAME)
archive :
	tar cf $(TAR) *
