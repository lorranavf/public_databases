FILES = meta.yml changelog.yml Makefile
DIRS = data data/latest data/archive

start-database:
	@base_dir="$(BASEDIR)"; \
	if [ -e "$$base_dir" ]; then \
		: ; \
	else \
		mkdir "$$base_dir"; \
	fi; \
	for DIR in $(DIRS); do \
		mkdir -p "$$base_dir/$$DIR"; \
	done; \
	for FILE in $(FILES); do \
		touch "$$base_dir/$$FILE"; \
	done; \
	
fix-ownership:
	sudo chown -R $(USER):$(USER) /public_databases
	sudo chmod -R 755 /public_databases

git-init:
	git init 
	git add README.md 
	git commit -m "docs: add README.md" 
	git add .gitignore 
	git commit -m "chore: add .gitignore" 
	git add Makefile 
	git commit -m "chore: add Makefile"              
	git add BPPRC/         
	git commit -m "chore: add BPPRC" 
	git add COG/ 
	git commit -m "chore: add COG"
	git add MiniKraken/  
	git commit -m "chore: add MiniKraken"
	git add Pfam/ 
	git commit -m "chore: add Pfam"
	git remote add origin git@github.com:lorranavf/public_databases.git
	git branch -M main
	git push -u origin main

