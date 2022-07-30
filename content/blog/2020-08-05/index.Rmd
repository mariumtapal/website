---
title: "Summer 2020 Data Science Internship (Praxis Funded!)"
date: '2020-08-11'
slug: summer-internship
tags:
  - internship
subtitle: ''
image:
  caption: ''
  focal_point: ''
  preview_only: yes
summary: "Debrief of my Summer 2020 remote internship."
---

Owing to the COVID-19 pandemic, I was asked to leave my college campus mid-way through the Spring 2020 semester, which, for me, meant leaving the United States for my home in Pakistan. Amid this once-in-a-century pandemic, even though I was now 9 hours ahead of Eastern United States time (where Smith College is located), I wanted to gain some important research experience in Data Science for which, I reached out to Professor Albert Y. Kim. After a thorough email conversation and a Zoom meeting, this internship was created, kindly supported by Smith College's [Praxis Program](https://www.smith.edu/about-smith/lazarus-center/praxis). This year, due to the pandemic, the Praxis application had an extended deadline with greater flexibility in eligibility criteria which made this internship possible!

From June 1 to July 24, I worked remotely as a Data Science Intern with Professor Kim, who is an Assistant Professor of Statistical and Data Sciences at Smith College and to me, a mentor, adviser, and the individual who introduced me to R. 

Every Monday evening (and at other times as needed), we met over Zoom to discuss things that were missed over Slack, to review completed tasks since the last meeting, and subsequently, devise a plan for the upcoming week.  

As part of my internship, I worked on two main projects:

- the [`fivethirtyeight`](#fivethirtyeight) R package
- the [`ModernDive`](#moderndive) book + R package + labs website

## `fivethirtyeight` {#fivethirtyeight}

At the start of the internship, the `fivethirtyeight` R data package was only partially hosted on The Comprehensive R Archive Network (CRAN), mainly because it exceeded the maximum 5MB size required by CRAN. My job was to come up with a solution to this issue while making a future-proof product, i.e. the solution would have the ability to add datasets in the future without extraneous work. 

Our solution was to use the `drat` package and functionality to host the larger datasets. We created the `fivethirtyeightdata` organization that included the `drat` repo and the `fivethirtyeightdata` add-on package. Some of the reasons why we decided to use the `drat` package are answered in these [FAQs](https://eddelbuettel.github.io/drat/DratFAQ.html). More information can be found on the `drat` [website](https://dirk.eddelbuettel.com/code/drat.html). The `fivethirtyeightdata` package is a regular R data package; it can be installed and ran independently. It contains all the datasets that were too large for the `fivethirtyeight` package and all the user-contributed vignettes that were made using `fivethirtyeight`/`fivethirtyeightdata` datasets.

Other smaller `fivethirtyeight` tasks that I worked on were:

- [Issue 55](https://github.com/rudeboybert/fivethirtyeight/issues/55): Reflect the retirement of [`tidyr::gather()`](https://tidyr.tidyverse.org/reference/gather.html) to the new, updated, easier-to-use, `pivot_longer()`.
- [Issue 79](https://github.com/rudeboybert/fivethirtyeight/issues/79): Update the master Google Sheet with the new datasets added by students in Smith College's SDS 390 class in Fall 2019.
- [Issue 81](https://github.com/rudeboybert/fivethirtyeight/issues/81): Update examples in documentation from `if(FALSE)` to using `\dontrun{}`.

Relevant Links:

* `fivethirtyeight` [repo](https://github.com/rudeboybert/fivethirtyeight) + [website](https://fivethirtyeight-r.netlify.app)
* `fivethirtyeightdata` [organization](https://github.com/fivethirtyeightdata)
    + `drat` [repo](https://github.com/fivethirtyeightdata/drat)
    + `fivethirtyeightdata` [repo](https://github.com/fivethirtyeightdata/fivethirtyeightdata) + [website](https://fivethirtyeightdata.github.io/fivethirtyeightdata/)

## `ModernDive` {#moderndive}

The ModernDive textbook is a textbook for introductory statistics and data science which is available in print and as an open-source online version. Along with the textbook, there is the moderndive R package which includes data and functions to support the textbook, and a labs website that houses sample problem sets and projects as well as tips and tricks. 

Relevant Links:

* Book [repo](https://github.com/moderndive/ModernDive_book) + [online textbook](https://moderndive.com)
* R package [repo](https://github.com/moderndive/moderndive) + [website](https://moderndive.github.io/moderndive/)
* Labs [repo](https://github.com/moderndive/moderndive_labs) + [website](moderndive.com/labs)

### Book

My main task was to clean up the non-user facing internal R code and text for better reproducibility. A non-exhaustive list of issues I fixed:

- [Issue 351](https://github.com/moderndive/ModernDive_book/issues/351):
  - ran styler on internal code chunks
  - cleaned up code chunk options by setting global defaults
  - purl management

- [Issue 354](https://github.com/moderndive/ModernDive_book/issues/354): Replaced hard-coded data values with dynamic data values.

### Labs Website

I helped with simplifying and organizing the labs website for a better user interface. 

### R package

I assisted in solving some issues that came up with the `moderndive` R package:

- [Issue 75](https://github.com/moderndive/moderndive/issues/75): Added message for the deprecation of the `gg_parallel_slopes()` function.
- [Issue 90](https://github.com/moderndive/moderndive/issues/90): Figured out why a warning message was being output in the `get_regression_points()` function, through a series of tests. It turned out that the problem was an inconsistency in `broom` package update to v0.7.0. Issue filed [here](https://github.com/tidymodels/broom/issues/896).

## General Takeaways

This summer internship led to some takeaways, which I can roughly divide into two categories: 1. technical and 2. non-tech

### Technical

* I learnt a great deal about general software engineering ideas in a data-science focused language, **R**. The work I did wasn't data analysis, but it was the behind-the-scene work to data analysis.
* Refactoring the code in the ModernDive book led to an important conclusion: "Don't repeat yourself". In a Rmarkdown document, it is simple to create an object with code/text that will be written multiple times and then referencing it through inline R code or with the variable name. Perhaps, it might be a good idea to create a function, where appropriate 
* I dived in deeper with version control in Git and GitHub. Got better at working with branches, forks, dependency graphs, issues, pull requests, and a lot more!
* When do you create a GitHub Organization for projects? When you have more than one relevant repository
* Got to know more about checks and continuous integration with Travis CI and GitHub Action  — and figuring out how to pass them!
* I debugged quite a few different notes, warnings, and errors! Learnt that some of them might not be issues with your code, but that the problem exists upstream!
* Spent some time understanding basic HTML and CSS to use in collaboration with R: href's, redirect files, and styling
* Shifted mindset to think like the user of the product — focusing on user experience
* Consequently, while I was familiar with R package development, I had never worked on updating a previously used package. I had to take into account that the user experience should not change much
* I researched into new technologies, such as using the `drat` package
* Reiterated the significance of a [Minimum Viable Product (MVP)](https://en.wikipedia.org/wiki/Minimum_viable_product). Professor Kim introduced me to this philosophy about 2 years ago in the first data science class I took in Fall 2018
* The importance of reproducibility and providing clear instructions was evident. For example, when I was conducting the first round of tests for the fivethirtyeight/drat project, there was trouble - but I did get better at it!

### Non-Tech

* Since I was 9 time zones ahead of Professor Kim, structuring work time so that some work hours overlap with work hours in the US was important 
* Collaborating while working remotely was very different to anything I had ever done before, but due to the nature of the work and all the technology available, it was seamless
* Communicating via Slack and Zoom, on time and frequently was important so that there were no breaks in work. Some things work better over zoom than via instant message
* Asking questions when needed and providing a lot of detail was helpful
* Adaptability to changing circumstances

### Some random afterthoughts

* I now know that I can do a lot of things that I think I can't, and if I don't know how, I can learn it
* Thousands of people all across the world use and look at my work - it is an incredible feeling
* I have concluded that I should take more varied coursework in statistics and data sciences in my remaining time at Smith, courses which are not necessarily required
* Not be intimidated at opportunities that seem out of reach. I was able to get this internship due to previous experiences which had scared me

