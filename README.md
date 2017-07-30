# Summer School: Automated Collection of Web and Social Data

## Part of the 
* [2017 ECPR Summer School in Methods and Techniques](https://ecpr.eu/Events/EventDetails.aspx?EventID=116)

## CEU, Budapest, July 31 - August 4, 2017

## Instructors

* [Pablo Barber&aacute;](http://pablobarbera.com/)
* TA: [Juraj Medzihorsky](http://pds.ceu.edu/people/juraj-medzihorsky)

## Outline

An increasingly vast wealth of data is freely available on the web -- from election results and legislative speeches to social media posts, newspaper articles, and press releases, among many other examples. Although this data is easily accessible, in most cases it is available in an unstructured format, which makes its analysis challenging. The goal of this course is to gain the skills necessary to automate the process of downloading, cleaning, and reshaping web and social data using the R programming language for statistical computing. We will cover all the most common scenarios: scraping data available in multiple pages or behind web forms, interacting with APIs and RSS feeds such as those provided by most media outlets, collecting data from Facebook and Twitter, extracting text and table data from PDF files, and manipulating datasets into a format ready for analysis. The course will follow a "learning-by-doing" approach, with short theoretical sessions followed by "data challenges" where participants will need to apply new methods.

Additional information and schedule is available at the [ECPR Summer School website](https://ecpr.eu/Events/PanelDetails.aspx?PanelID=7055&EventID=116)

## Setup and Preparation

There are two ways you can follow the course and run the code contained in this GitHub repository. The recommended method is to connect to the provided RStudio server where all the R packages have already been installed, and all the R code is available. To access the server, visit bigdata.pablobarbera.com and log in with the information provided during class.

Alternatively, you can run the code in your own laptop. You will need [R](https://cran.r-project.org/) and [RStudio](https://www.rstudio.com/) installed.

If you're using your own laptop, you can either download the course materials clicking on each link in this repository, download it as a zip file, or you can "clone" it, using the buttons found to the right side of your browser window as you view this repository.  If you do not have a git client installed on your system, you will need to [get one here](https://git-scm.com/download/gui) and also to make sure that [git is installed](https://git-scm.com/downloads). 

You can also subscribe to the repository if you have [a GitHub account](https://github.com), which will send you updates each time new changes are pushed to the repository.

## Day 1

The first part (Day 1) will offer an introduction to the course and then dive into the basics of webscraping; that is, how to automatically collect data from the web. This session will demonstrate the two most common scenarios for webscraping: when data is in table format (e.g. Wikipedia tables or election results) and when it is in an unstructured format (e.g. across multiple parts of a website). The tools available in R to achieve these goals – the rvest and RSelenium packages – will be introduced in the context of applied examples in the social sciences. Students are also encouraged to come to class with examples from their own research, and we will leave some time at the end of class to go over one or two. As we study different methods to scrape data, we will also learn how to efficiently parallelize loops and work with lists, as two of the most important building blocks of a scalable data collection process.


[Slides: Introduction to the course (.pdf)](day1/slides-intro.pdf)

[Slides: Scraping the web (.pdf)](day1/slides-scraping.pdf)

[Code: Scraping tables (.html)](day1/01-scraping-tables.html)

[Code: Loops, vectorized functions, and lists (.html)](day1/02-computing.html)

[Challenge 1: Scraping the American President Project website (Part I)](day1/challenge1.Rmd)

[Code: Scraping unstructured data (.html)](day1/03-scraping-unstructured-data.html)

[Challenge 2: Scraping the American President Project website (Part II)](day1/challenge2.Rmd)


## Day 2

NGOs, public institutions, and social media companies increasingly rely on Application Programming Interfaces (API) to give researchers and web developers access to their data. Day 2 of the course will focus on how we can develop our own set of structured http requests to query an API. In our second session, we will discuss the components of an API request and how to build our own authenticated queries using the httr package in R. We will apply these skills to the New York Times API, in the context of an example of how to query newspaper articles. In the second half of the class, we will cover two advanced examples of webscraping tools: data that is behind a web form (e.g. querying online databases) and data from newspaper articles presented in a non-standard format using the boilerPipeR package.

[Slides: Web APIs (.pdf)](day2/slides-APIs.pdf)

[Code: Scraping the New York Times](day2/01-nytimes-api.html)

[Challenge 1: Working with the NYTimes API](day2/challenge1.Rmd)

[Code: Advanced scraping with Selenium (.html)](day2/02-advanced-scraping.html)

[Code: Extracting media text from newspaper articles (.html)](day2/03-newspaper-articles.html)

[Challenge 2: Scraping articles from The Guardian](day2/challenge2.Rmd)

## Day 3

In the third session, we will learn how to use the most popular R packages to query social media APIs: rtweet, streamR, and Rfacebook. These packages allow researchers to collect tweets filtered by keywords, location, and language in real time, and to scrape public Facebook pages, including likes and comments. The process of collecting and storing the data will be illustrated with examples from published research on social media.

[Slides: Twitter data (.pdf)](day3/slides-twitter.pdf)

[Code: Collecting Twitter data from the Streaming API (.html)](day3/01-twitter-streaming-data-collection.html)

[Code: Collecting Twitter data from the REST API (.html)](day3/02-twitter-REST-data-collection.html)

[Challenge 1: Collecting and analyzing Twitter data](day3/challenge1.Rmd)

[Slides: Facebook data (.pdf)](day3/slides-facebook.pdf)

[Code: Collecting Facebook data (.html)](day3/03-facebook-data-collection.html)

[Challenge 2: Collecting and analyzing Facebook data](day3/challenge2.Rmd)

## Day 4

An underappreciated part of the research process is data manipulation – it is rarely the case that the dataset we want to use in a study is available in a format suitable for analysis. Data "munging" is tedious, but there are ways to make it more efficient and replicable. The last block of the course teaches good practices to clean and rearrange data obtained from the web. We will start with two data formats that are relatively new to social sciences – text and network data. Through a series of applied examples, the materials here will explain how to convert a corpus of documents into a data matrix that is ready for analysis – from dealing with encoding issues, preprocessing text in different languages, and efficiently building a document-feature matrix with quanteda – and how to work with network data – covering the basics of network analysis, how to identify nodes and edges, and how to create an adjacency matrix with igraph.

[Slides: text data (.pdf)](day4/slides-text.pdf)

[Code: Introduction to text analysis (.html)](day4/01-text-intro.html)

[Code: Dictionary methods (.html)](day4/02-dictionary-methods.html)

[Challenge 1: Challenge 1: Sentiment analysis of political tweets and speeches](day4/challenge1.Rmd)

[Slides: network data (.pdf)](day4/network-text.pdf)

[Code: Introduction to network analysis (.html)](day4/03-networks-intro-visualization.html)

[Code: Introduction to network analysis (.html)](day4/04-networks-descriptive-analysis.html)

[Challenge 2: Challenge: Polarization of interaction patterns on Twitter](day4/challenge2.Rmd)

## Day 5

The last session will begin with an overview of how to learn how to extract data from PDF files, both in text and table formats. This session will also feature a closer look at best practices in statistical computing, building upon the different examples used during the first four days. We will also cover how to merge datasets from different sources, in cases with both identical and similar merging keys (i.e. when a numeric ID is the same across datasets, but also when only country names with slightly different spellings are the only variable that is common to multiple datasets), and how to efficiently compute summary statistics and other aggregated estimates based on a data frame with dplyr.


[Code: Extracting data from PDF files (.html)](day4/01-data-in-PDFs.html)

[Challenge 1: Analyzing the Amnesty International Annual Report](day5/challenge1.Rmd)

[Code: Merging multiple datasets (.html)](day5/02-merging.html)

[Code: Introduction to dplyr and the tidyverse](day5/03-tidyverse.html)

[Challenge 2: ](day5/challenge2.Rmd)












