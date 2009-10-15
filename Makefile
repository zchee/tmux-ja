
SRC_BASE = tmux-ja
FILE_IN = $(SRC_BASE).rst
FILE_OUT = $(SRC_BASE).html
FILE_DUMP = tmux-raw.txt

.PHONY: all
all : $(FILE_IN)
	rst2html --language=ja --title='Manpage of TMUX' $(FILE_IN) $(FILE_OUT)

.PHONY: clean
clean:
	$(RM) $(FILE_OUT)

.PHONY: dump
dump : $(FILE_IN)
	rm -f $(FILE_DUMP)
	LANG= man tmux > $(FILE_DUMP)
