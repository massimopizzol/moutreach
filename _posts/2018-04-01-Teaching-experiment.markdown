---
layout: post
title: "A teaching experiment"
date: 2018-04-01
tags: [teaching, life cycle assessment]
excerpt: Reflections after teaching Brightway2
---


![OMG]({{ site.url }}/assets/OMGBW2Worked.png)
<center><i><font size="2">Some cryptic python code</font></i></center>


# Hacking

I have been using the [Brightway LCA framework](https://brightwaylca.org/) for a while. It is a great tool to do LCA at research level and beyond the limitations of traditional commercial LCA software. 

Our Department kindly provides a SimaPro LCA software faculty license for students and staff as well as a developer one for staff. This has been working fine for both research and teaching for long time. Still does. However, SimaPro is good for consultants but doesn't allow much flexibility in doing more advanced analysis, e.g. uncertainty analysis via Monte Carlo simulation. 

An interesting alternative is _Brightway2_. This is a LCA software written in the programming language [python](https://en.wikipedia.org/wiki/Python_(programming_language)). It's open source, extremely flexible, allows to do very advanced simulations[^1]. Can be used in endless combinations with all the python data science features and packages. _But_, unless you already are a python expert, it has a **steep learning curve**.

I really enjoy using _Brightway2_, especially for doing uncertainty analysis and statistical testing of data. Feels like doing real science. But I often have a hard time figuring out how to make it work. This is part of the trade off with experimental software: it's advanced but unfriendly. I am self-learned in python (studied [this book](https://learnpythonthehardway.org/python3/) during the evenings when I took paternity leave some years ago...). And not a programmer so this partly explains why I am having a hard time. 

So I got this idea: if more people at our group use it, then we'll perhaps create a small **community**. This could make it easier to share code, experiences, fix problems, etc. Also, I was not using _Brightway2_ regularly in the beginning and I kept forgetting how all the functions and syntax worked. So I made some scripts to **teach myself** things after a period off.  I said OK, let's revise the material I already have, make a nice compilation of scripts and related explanations, and share them with some colleagues and students here and make everybody happy. _How difficult can it be?_

It turned out to be not too difficult but a bit **time consuming**. Certainly it was worth the effort.

# Experimenting 

I organised an _unofficial_ course in _Brightway2_ for staff and students here at my Department. No credits, no guarantee of success - this had not been tested. 
12 brave people volunteered for that. Different background, all of them had some LCA knowledge although with different degree of expertise, almost none of them had previous python knowledge, and only some of them had taken statistics classes before. **Mixed audience**.

The main **learning objective** was to being able to use _Brightway2_ at a level comparable to other commercial LCA software. This required gaining both knowledge and skills in python and _Brightway2_ data structures and syntax, plus elements of LCA and statistics. 

My biggest **concern** was that I had never been teaching python before, and I had only been teaching little statistics before. I had to cover all these things quite in detail because of the mixed audience. Also, I am certainly not a _Brightway2_ expert. I estimate that I can use perhaps 15-20% of its full potential.

**I decided not to overthinking this**. Perhaps I was _expert enough_ in all this stuff to teach it. To my intended audience at least. I.e. to complete beginners. And in relation to the objective set for the course. Worst case, if I had said something wrong in class, we would find together an answer. Or google one. Sharing experiences with others was more important than fearing to fail. 

**I could only gain from this.**


# Evaluating

And so we did it. Four lectures, eight hours. A lot of preparation, some mistakes on the way, plenty of areas for improvement, but also great fun, huge learning experience. I believe I learned at least as much as the students did from this course. 

After a little evaluation survey and personal reflection, here the main take home messages:

- **More time needed**. No surprise, the course was really condensed. In particular more time to be dedicated to practical exercises. Makes sense, this is a tool, so one needs to get hands dirty and try try try...(_now imagine the sound of somebody frantically typing on a keyboard: tjk tjk tjk k-tjk tjk k-tjk tjk_)

- **Python and stats: not scary** (at this basic level at least). It is actually surprisingly straightforward to teach basic elemnts of programming (functions, objects, loops) and statistics (distributions, significance tests) because 1) there is plenty of reading material available for free online - compared to teaching LCA this is the world of plenty 2) they are applied easily and immediately and this makes them very concrete. Definitely worth trying.

- **Fix it on the way**. The students had interesting questions about issues that I didn't face or didn't think about including (_How to fix this installation?_ _How to model co-products?_ _How to find an exchange without indexing?_ etc.). We found solutions instantly (thanks also to our own python guru [Romain Sacchi](http://personprofil.aau.dk/126896?lang=en)) or after the lecture and followed up on the next lecture.

I hope now some of the students will now start using _Brightway2_ for the next project or analysis. In any case, I have now eight hours worth of fairly organised and **tested** teaching material on this subject, ready for reuse. 

What this experience confirmed is that teaching a subject is a very **effective** method to better master the subject, because one gets to better know where his knowledge is solid and where it can be strengthened.  Teaching is learning. 

As somebody wise said: _"Between the road uphill and the road downhill, choose the road uphill and you'll always be better off"_.



[^1]: Mutel, C. Brightway: An open source framework for Life Cycle Assessment. J. Open Source Softw. 2017, 2 (12), 1–2.

