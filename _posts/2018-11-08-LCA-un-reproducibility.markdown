---
layout: post
title: "Reproducibility problems"
date: 2018-11-08
tags: [life cycle assessment, peer review]
excerpt: A story of ordinary LCA madness
---


![data_exchange]({{ site.url }}/assets/data_exchange.jpg)
<center><i><font size="2">Data exchange (Photo credit: Massimo Pizzol)</font></i></center>


# Weapon of choice

In the last three months we have been hosting in our DCEA group Nils Thonemann, a PhD student from [Fraunhofer UMSICHT](https://www.umsicht.fraunhofer.de/en.html) (DE). I am collaborating with Nils on a comparative environmental assessment of technologies for Carbon Capture and Usage (CCU), super interesting. We are using LCA as main methodology. 

Nils is a really nice guy but unfortunately he is using [openLCA](http://www.openlca.org/) software for this LCA project. There is nothing wrong about openLCA of course - it's a great and free software - but in my group we either use [SimaPro](https://simapro.com/) or [Brightway2](https://brightwaylca.org/). So now the troubles begin. Keep reading.

# First compromise

So after me and Nils had discussed and defined an appropriate model for the life cycle inventory of this study, it was time to start implementing such a model into a LCA software to do the analysis. 

Nils of course preferred to use openLCA, the software he was familiar with, without having to invest time and resources in learning a new one (not the primary purpose of his research stay). This was completely reasonable. Similarly, I am not familiar with openLCA and I didn't want to learn a new software either. So how could we **share** data and information? How could I give feedback on his model when he made revisions? I couldn't just physically take his computer and look at the screen, for obvious reasons. 

The first thing we tried was our business as usual option, i.e. structuring the foreground system in Excel in a matrix format (see an example [here](http://moutreach.science/2017/12/01/LCI-reporting.html)). With some [magic](https://github.com/massimopizzol/Simapro-CSV-converter), this can then be converted in a _SimaPro.csv_ type of file and imported directly in SimaPro. There is an _import SimaPro.csv_ option in openLCA, so this could have been the perfect solution. However, we tested it by importing an example of _SimaPro.csv_ file in openLCA and didn't work. Why? Because the names of the database activities and the structure of the database are different between SimaPro and openLCA. _Gosh._ We also tried exporting data from openLCA. We had to export a huge file with all background system. Crazy unpractical. **Headache**.

So first compromise. We decided that Nils would organise the inventory data into an Excel file using the matrix structure. We agreed to only use this file as common shared version, for analytical and practical reasons. It allowed for a nice overview of the foreground system, and it could be exchanged via email. Then Nils would manually **duplicate** this product system in openLCA to run the calculations. Double work, hurray! 

_Status_: we had now the same product system in **two** formats: Excel (matrix) and OpenLCA.

_For completeness, this foreground system includes about 20 activities, and each of these is linked to some (3-10) background activities from the ecoinvent consequential database v.3.4. So it's rather small._

# Second compromise

After some time Nils obtained the first results and everything seemed alright and now we really wanted to do the uncertainty analysis. So I proposed to do this in Brightway2 because: _"...man, it's faster"_. All we had to do was to reproduce the same product system in Brightway2. 

_Now that I am writing this down I realise that this idea was quite optimistic. Anyway._ 

Brigthway2 is a great software as well although it's not super easy when it comes to import and export data. There are plenty of import strategies but honestly, I never got them to work or I didn't like them. But at least the software is very flexible. So I have developed my own workflow that, again, is about formatting the foreground system in Excel using a table format, creating a .csv file, and importing in Brightway2 (see an example [here](https://github.com/massimopizzol/B4B/blob/master/03.3_Excel_import.py) and the code [here](https://github.com/massimopizzol/B4B/blob/master/lci_to_bw2.py)). Works perfectly for my purposes and I am super satisfied with that. 

However, this meant that Nils had to format **again** his product system in another structure. On top of this, Brightway2 uses univocal codes to identify each activity from the ecoinvent database and these codes are **not the same** as the codes used by openLCA. 

Second compromise. Nils formatted the foreground system in Excel in the table format as well, and I manually found all the codes of all the ecoinvent database activities plus wrote the specific code for the analysis by recycling code from previous projects. _Recycle or die!_ It took me about half a day because...I am slow (but thorough). Triple work, hurray! 

_Status_: we had now the same product system in **four** formats: Excel (matrix), Excel (table), openLCA, and Brightway2.


# Detective work

After all the formatting of this holy product system I run the analysis in Brightway2, exported the results, and compared with the results that Nils had obtained from openLCA.

**Results didn't match.** 

The reason why I was not freaking out at this point was that I had tried this many times before. Actually I would have been more surprised if everything had worked as expected on the first attempt. 

We then started sharing spreadsheets with either the data or the results **back and forth** between us and double-checking them to find the mistakes. And we found quite some mistakes. Some examples:

- used wrong _amounts_ for some exchanges (e.g. mismatch between unit and amount or copy-pasting errors)
- used a wrong model _structure_ (some exchanges had been forgotten)
- selected the wrong _dataset_ from the database  
- the results file I had received contained some wrong _impact_ values (belonged from a previous analysis and had not been updated). 

So a lot of mistakes that are imputable to the **manual handling** of data.

# Pearls of wisdom

After a lot of detective work we were able to find all the mistakes and obtain comparable results with a reasonable difference (0.1% or lower). **Mission accomplished.** 

Take home message: data exchange between LCA software is _clumsy_.  

In this occasion, I was trying to share data with (and get the same results as) a colleague **sitting in the same office** but using a different software. We had  full access to information and sufficient time and resources available. Imagine how this becomes when one tries to reproduce results from let's say...a scientific paper.

The fact that data exchange between LCA software is complicated is not a surprise for anybody who has collaborated on a LCA project on multiple software. Let's consider for a second the possibility that all of this is due to my incapacity. Perhaps it's me who's not good enough in getting all of this software to interact properly. 

Ok, but honestly, my impression is that to import/export LCA data I need to be either rich, or an IT _guru_, or I need a PhD in data science. Is this reasonable? I actually think me and colleagues have developed a lot of workarounds over time...

LCA is **manual work** and this means a lot of little transcription mistakes. Since one wrong data point can change results dramatically, it is important to reduce as much as possible all this error-prone manual handling in the exchange of data.

Some final notes:

1. I am no data expert, but my understanding is that there is a difference between formats that allow to _understand_ the data, and formats that allow to _share_ them. A LCI structured in an excel matrix is a nice and easy to understand **at a glance**. But a text file unreadable to humans might be perfectly fine as format for import/export between software and **reproduce** results. The two purposes might not be achievable with one data format only, but then we should have tools to convert easily between formats.

2. One must think hard about software before doing a LCA because once started one can easily get **locked in** a situation where it's hardly possible to use this data in another software. I usually save data in multiple formats as backup.

3. There are people out there crazy enough to be actually **interested** in using LCA data from other studies and even reproduce results of other studies. So I hope LCA practitioners will start thinking a bit more about _the life cycle of their data_ (ahahah) and provide foreground system information in a reasonably organised and easy to reproduce, _software-agnostic_ format. [Here some tricks](http://moutreach.science/2017/12/01/LCI-reporting.html).

4. I kind of understand why providers of commercial LCA software have an interest in locking people into using their own software-specific data formats. However, this doesn't mean that I should like or accept this situation. Those who know ways to **hack** the data import/export please get in touch, I would love to hear more about it.

5. In general it's a pity that there isn't a mainstream platform to **share** LCA data between researchers. There are some initiatives in this sense: from the [Bonsai](https://bonsai.uno/) project to the _open industrial ecology data commons_ [pilot](http://www.database.industrialecology.uni-freiburg.de/), but right now these initiatives are striving to reach critical mass. 

Long story short, a lot of work to do on the reproducibility front for the LCA community.