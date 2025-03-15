# Please read before changing anything
# https://makefiletutorial.com/

files := pods pods-ls
dest_loc := $$HOME/.local/bin/
dest_files := $(addprefix $(dest_loc), $(files))
tmp := echo 'export PATH="$$PATH:$$HOME/.local/bin"' >> $$HOME/.zshrc

$(dest_files): 	
	# Copy $(@F) file to $(dest_loc)
	
	cp $(@F) $(dest_loc) 

install: $(dest_files)

ensurepath:
ifneq (,$(findstring .local/bin,$$PATH))
	echo "Found ~/.local.bin in PATH. Skipping..."
else
	@echo Hello wroldd
	@echo $(tmp)
endif


clean:
	rm -f $(dest_files)
