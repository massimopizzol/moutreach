---
layout: post
title: "And a third group-exercise"
date: 2017-05-13
tags: [teaching, life cycle assessment]
excerpt: To feel the life cycle assessment modelling thrill
---

And yet another post of the series on **group-exercises to teach sustainability**. Why group exercises? Check my [previous post]({{ site.url }}/2017/03/13/Group-exercises-participatory-scenario-development.html) to learn about [problem based learning](http://www.en.aau.dk/about-aau/aalborg-model-problem-based-learning) and how teaching is done at Aalborg University.


# The urban metabolism exercise

This exercise is more high-tech and has actually very little to do with _urban metabolism_, but got this name because I first developed it the larger context of a lecture on that topic. The **learning goal** is to experience in first person what are the challenges in doing quantitative modelling, in particular life cycle assessment (LCA) modelling. So this is a more LCA-nerdy exercise compared to the ones I already described in previous posts ([here]({{ site.url }}/2017/03/13/Group-exercises-participatory-scenario-development.html) and [here]({{ site.url }}/2017/04/13/Group-exercises-system-thinking.html)).

I use the [FORWAST](http://forwast.brgm.fr/) **input output database** for this exercise. Students are provided with a list of all the entries of this database. Each entry is a very aggregated industry sector, for example the first one is called `__1 Bovine meat and milk, DK`. The students are also given a key to decipher which economic activities, classified according to the [NACE](http://ec.europa.eu/eurostat/statistics-explained/index.php/Glossary:Statistical_classification_of_economic_activities_in_the_European_Community_(NACE)), are grouped under each sector.

Students work first **individually**. They are asked to estimate their yearly consumption for each of the 123 entries, and to do it without consulting with other students (as far as possible). _This is a crazy task._ Because they have no idea of what is the difference between e.g. `__2 Pigs, DK` and `_16 Meat products, Pork, DK`, and they have to find it out by reading the NACE documentation. They are literally casted into the modelling exercise. Also, they have to **quantify**, at least roughly, weird stuff like how many kilograms of fish they eat in one year, how many euros they spend in flight tickets in a year, etc.

After doing this individually, they **work in groups** of 4-6 students and are invited to reach consensus on each entry, i.e. to provide an estimate that is representative for every student in the group. So they compare the respective estimates, discuss things like how different their diets are, how they have interpreted or understood the different database entries, how they have quantified the yearly kWh of electricity used, etc.

Finally I get the lists compiled by all groups, upload them in the SimaPro LCA software with some [magic tricks](https://github.com/massimopizzol/Simapro-CSV-converter), calculate a **carbon footprint** for each group, and show a network chart where the contribution of different sectors to the total is visualized (see figure below). Together, we compare and **discuss the results** of the different groups, focusing on **which differences we observe** and on **why there are these differences**.

Then we discuss how this approach could be used to **upscale** bottom-up the same analysis to an entire city (here comes the *urban metabolism*...), what other assumptions and simplifications would be needed, what effort it will require, and the validity of this approach.

![Urban Metabolism]({{ site.url }}/assets/urbanmetabolism.JPG)
<center><i><font size="2"> The carbon footprint and contribution analysis for the yearly total consumption of a group of students. Values are not accurate... </font></i></center>


# What's the point with this exercise?

Students are presented with typical challenges of life cycle assessment modelling. **Understanding and dealing with a LCA database** is difficult. Other people have prepared this database and one must interpret their way of thinking, understand the naming conventions, what each process represents, and the database structure. **Making accurate estimates** of strange, unfamiliar, and very different things and validating these estimates with references requires good quantitative skills and a sense for what is realistic. **Making reasonable modelling assumptions** and evaluating the trade-offs between accuracy, modelling complexity, and data collection effort is the key to develop _useful_ models. **Understanding model results and their drivers** requires analytical skills.

In terms of time and effort, the exercise takes 3-4 hours (depending on how lengthy is the introduction on input-output analysis), and starts quite hardcore because the individual part of the exercise is objectively demanding. However, the exercise becomes more fun (well..._'fun'_) after the first hour especially when students work in group.

Important note: students don't learn how to perform a life cycle assessment study by doing this exercise, but they **get a good feeling** of what doing life cycle assessment studies really is. This means that they can also **be critical towards life cycle assessment studies** when they encounter one, because they understand how subjective, uncertain, and complex is the process behind those studies. They also get a good grasp of what modelling and parameter uncertainties are in practice.

Summing up, this exercise is about life cycle assessment modelling. As for the exercises presented in previous posts, here **the process is more important than the result**. So in the end it does not matter how accurate the obtained carbon footprint is. The important is going through the modelling process and reflecting on it.
