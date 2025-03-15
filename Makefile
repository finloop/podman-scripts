# Please read before changing anything
# https://makefiletutorial.com/

files := pods pods-ls pods-env pods-pull
dest_loc := $$HOME/.local/bin/
dest_files := $(addprefix $(dest_loc), $(files))
tmp := echo 'export PATH="$$PATH:$$HOME/.local/bin"' >> $$HOME/.zshrc

$(dest_files): 	
	# Copy $(@F) file to $(dest_loc)
	
	cp $(@F) $(dest_loc) 

install: $(dest_files)

clean:
	rm -f $(dest_files)
