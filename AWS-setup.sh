## step 1) login to console, sudo su, open R
## install packages from Setup
## for topic models, run: sudo apt-get install libgsl0-dev

# deleting previous users

for i in 0{1..9} {10..50}
do
	userdel -r milan$i
done

for i in 0{1..9} {10..50}
do
	userdel -r eitm$i
done

# creating new users

for i in 0{1..9} {10..40}
do
	adduser --quiet --disabled-password --shell /bin/bash --home /home/ecpr$i --gecos "User" ecpr$i
	echo "ecpr$i:password$i" | chpasswd
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	mkdir /home/ecpr$i/code
	mkdir /home/ecpr$i/data
	mkdir /home/ecpr$i/credentials
	cp /home/rstudio/code/* /home/ecpr$i/code/
	cp /home/rstudio/data/* /home/ecpr$i/data/	
	sudo chown ecpr$i -R /home/ecpr$i/
done	


# solutions challenge 1
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge1-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge1-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/05-advanced-scraping.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/04-text-analysis.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge3.Rmd /home/ecpr$i/code/
	cp /home/rstudio/data/trump-tweets.json /home/ecpr$i/data/	
	sudo chown ecpr$i -R /home/ecpr$i/
done	


# solutions challenge 2, part 1
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge2-solutions-part1.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge2-solutions-part1.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# solutions challenge 2, full
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge2-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge2-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# materials day 3
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/06-newspaper-articles.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/07-nytimes-api.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/08-clarifai-api.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge4.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge5.Rmd /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done

# solutions challenge 3
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge3-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge3-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# preparing tokens
for i in 0{1..9} {10..35} {38..40}
do
	cp /home/rstudio/ecpr-credentials/token$i /home/ecpr$i/my_oauth
	sudo chown ecpr$i -R /home/ecpr$i/
done


# solutions challenge 4
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge4-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge4-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# materials day 4
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/09-twitter-streaming-data-collection.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/10-twitter-REST-data-collection.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge6.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge7.Rmd /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# solutions challenge 5
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge5-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge5-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# solutions challenge 6
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge6-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge6-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done



# materials day 5
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/11-data-in-PDFs.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/12-encoding.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/13-other-topics.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge8.Rmd /home/ecpr$i/code/
	cp /home/rstudio/data/2016results.pdf /home/ecpr$i/data/
	cp /home/rstudio/data/amnesty.pdf /home/ecpr$i/data/
	cp /home/rstudio/data/arrests.pdf /home/ecpr$i/data/
	cp /home/rstudio/data/japanese-tweets.json /home/ecpr$i/data/
	cp /home/rstudio/data/multiple-tables.pdf /home/ecpr$i/data/
	cp /home/rstudio/data/press-release.pdf /home/ecpr$i/data/
	cp /home/rstudio/data/unicode-tweets.json /home/ecpr$i/data/
	cp /home/rstudio/data/unvoting.csv /home/ecpr$i/data/
	sudo chown ecpr$i -R /home/ecpr$i/
done


# solutions challenge 6
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge7-solutions.Rmd /home/ecpr$i/code/
	cp /home/rstudio/code/challenge7-solutions.html /home/ecpr$i/code/
	sudo chown ecpr$i -R /home/ecpr$i/
done