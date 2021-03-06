draft:
	hugo server -D

setup:
	npm install autoprefixer
	npm install postcss

# 316
pull:
	git pull
	cd content/en/report/cloudmesh-openapi; git checkout main; git pull
	cd content/en/report/fa20-523-301; git checkout main; git pull
	cd content/en/report/fa20-523-302; git checkout main; git pull
	cd content/en/report/fa20-523-304; git checkout main; git pull
	cd content/en/report/fa20-523-305; git checkout main; git pull
	cd content/en/report/fa20-523-307; git checkout main; git pull
	cd content/en/report/fa20-523-308; git checkout main; git pull
	cd content/en/report/fa20-523-309; git checkout main; git pull
	cd content/en/report/fa20-523-312; git checkout main; git pull
	cd content/en/report/fa20-523-313; git checkout main; git pull
	cd content/en/report/fa20-523-314; git checkout main; git pull
	cd content/en/report/fa20-523-315; git checkout main; git pull
	cd content/en/report/fa20-523-316; git checkout main; git pull
	cd content/en/report/fa20-523-317; git checkout main; git pull
	cd content/en/report/fa20-523-319; git checkout main; git pull
	cd content/en/report/fa20-523-323; git checkout main; git pull
	cd content/en/report/fa20-523-326; git checkout main; git pull
	cd content/en/report/fa20-523-327; git checkout main; git pull
	cd content/en/report/fa20-523-328; git checkout main; git pull
	cd content/en/report/fa20-523-329; git checkout main; git pull
	cd content/en/report/fa20-523-330; git checkout main; git pull
	cd content/en/report/fa20-523-331; git checkout main; git pull
	cd content/en/report/fa20-523-332; git checkout main; git pull
	cd content/en/report/fa20-523-333; git checkout main; git pull
	cd content/en/report/fa20-523-334; git checkout main; git pull
	cd content/en/report/fa20-523-336; git checkout main; git pull
	cd content/en/report/fa20-523-337; git checkout main; git pull
	cd content/en/report/fa20-523-339; git checkout main; git pull
	cd content/en/report/fa20-523-340; git checkout main; git pull
	cd content/en/report/fa20-523-341; git checkout main; git pull
	cd content/en/report/fa20-523-342; git checkout main; git pull
	cd content/en/report/fa20-523-343; git checkout main; git pull
	cd content/en/report/fa20-523-345; git checkout main; git pull
	#cd content/en/report/fa20-523-346; git checkout main; git pull
	cd content/en/report/fa20-523-347; git checkout main; git pull
	cd content/en/report/fa20-523-348; git checkout main; git pull
	cd content/en/report/fa20-523-349; git checkout main; git pull
	cd content/en/report/fa20-523-350; git checkout main; git pull
	cd content/en/report/fa20-523-352; git checkout main; git pull
	cd content/en/report/sp21-599-353; git checkout main; git pull
	cd content/en/report/sp21-599-354; git checkout main; git pull
	cd content/en/report/sp21-599-355; git checkout main; git pull
	cd content/en/report/sp21-599-356; git checkout main; git pull
	cd content/en/report/sp21-599-357; git checkout main; git pull
	cd content/en/report/sp21-599-358; git checkout main; git pull
	cd content/en/report/sp21-599-359; git checkout main; git pull

view:
	gopen http://localhost:1313/ 
server:
	hugo server

publish:
	hugo
	git commit -m "Publish hugo" .
	git push


test:
#	pandoc a.md -t markdown-citations -s --bibliography a.bib --csl ieee.csl -o output.md
#	pandoc a.md --filter pandoc-citeproc -s --bibliography a.bib --csl ieee.csl -o output.md
	cat a.md | pandoc -t commonmark  -s --bibliography a.bib --csl ieee.csl
#-o output.md

list:
	python bin/tree.py > content/en/modules/list/_index.md
