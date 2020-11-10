---
layout: post
title: LCA, giving the right answers
date: 2020-11-10
tags: [life cycle assessment, teaching]
excerpt: The questions are outside you
---


![Figurehere]({{ site.url }}/assets/DSC_0235.JPG)
<center><i><font size="2">Same but different</font></i></center>


&nbsp;

The previous post was about asking questions so it's kind of fair to write a post about answering questions.
 
Just, I won't be answering the questions that I previously posed. I won't actually be answering any question, but using answers from other clever people. Yes, I am becoming lazier every day.


I am reproducing below excerpts of a correspondence that was posted some time ago in the worldwide famous [Pré mailing list](https://support.simapro.com/articles/FAQ/How-do-I-subscribe-to-the-LCA-discussion-list). If you haven't already, you should subscribe there and get updates on what is going on in the **LCA community**...

I find this was a very good question that received a very good answer. And probably a good read for both my students [^1] and the readers of this blog, hopefully.

Here we go.

# The right question

Now I would love to reproduce the exact text, but I have mailed the person positing it asking for permission and I didn't get an answer. So I am rephrasing it in my own words but close to the original, to give an idea. 

> _Dear all,_
> 
> _I want to model the production of 1 kg coal and I can find in my LCA software five different datasets for lignite-based production. One is from the ecoinvent database, two are from the ELCD database, and the other two are from the USLCI database. Their names are listed below. The results in terms of life cycle carbon emissions are very different, up to 90% difference between some of the processes! There must be some mistake in these data if results differ so much. What do you think, do you see any reason for these differences?_
> 
> - _Lignite {RoW} / Market for / APOS, U_
> - _Lignite mix, technology mix, consumption mix, at consumer EU27S_
> - _Lignite mix, from open pit mining, consumption mix, at power plant EU27S_
> - _Lignite coal, at surface mine / US_
> - _Lignite coal, combusted in industrial boiler / US_

What a wonderful question. I am sure many have had a similar question, students and practitioners of LCA. 


# A clever answer 

By [Gabor Doka](https://www.doka.ch/enter.htm), who I have contacted before reproducing and kindly gave me permission (as well as some other useful comments that I will include below). I include only some key quotes of the original (longer) answer.
 
>_Dear ..._
>
>_The last lignite process is a lignite combustion process, while the other four are lignite production processes (uncombusted). It does not make sense to expect equal burdens from this comparison._

First point here: we are not comparing between similar things. The **scope** of the different activities is different. They don't include the same number and type of life cycle **stages**. One of them includes the use stage, i.e. burning the fossil fuel. This use stage, the combustion of a lignite fuel, is the activity that generates most of the carbon emissions so including or excluding it makes a big difference!

>_Lignite is a quite variable material with a geogenic origin [...] can have for instance between 20% and 70% carbon content. Ash content can be diverse in sum and composition. These are real world differences._

Second point: natural **variability**. Not all lignite is made equal, but we don't have data for all types of lignite in each database...

>_Even if you have absolutely identical materials, there are various ways of mining and processing them, various technologies, various efficiencies, which all affect the burden of the lignite product. Also these are real world differences (in time and in place) and one should not expect equal burdens from such a comparison._

Similar as previous point, but this time with reference to the technical variability of the process instead of the natural variability in the material. The dataset is meant to represent one single instance of a process that occurs in reality under a variety of conditions. This is a sample of a larger population. We can't possibly collect data about every condition, so it is reasonable to expect differences. We could also refer to this as the **uncertainty in our data** although we should note that in this case "more certainty" is not a possibility. These are real world differences and variabilities, such variability is intrinsic of the phenomenon we are describing.

>_And even if you have identical technological processes for identical materials, the fact alone that for instance the upstream electricity mix can come from various power plant mixes, can introduce differences in LCA results. So in LCA even if you have identical foreground processes doing exactly the same thing, you still can have differences from background services e.g. from the different location of the process._

Third point, the **background system**. Even if the foreground processes are the same, the background ones can change considerably. 

Usually when doing LCA we link a foreground activity (roughly: primary data of a study) with a background one (roughly: secondary data from a database provider). The background activity might be chosen to reflect, for example, different locations of the activity. This is not a modelling mistake but a true reflection of the geographical variability of the phenomenon. Thus, these differences are fully justifiable.

Last quote: 

>_LCIA results depend on breadth of analysis that has gone into the used unit processes. I see for instance that the USLCI has no land use [...] no infrastructure inventoried [...] it does not seem to have any radioactive emissions._ 

This final point is about **completeness**. Even if we do collect some data about an activity, we might not have all the relevant ones. Something might be left out and our representation of the activity is partial or incomplete. This is not an excuse for leaving data gaps, as LCA should strive for the highest completeness to avoid burden-shifting, but a reminder that LCA is not a perfect model of the world.

 
# Not included, but still relevant

The Q&A above refers to **real world** differences between activities that are reflected in the results of a LCA. However, different LCA results can also reflect pure **modelling** differences. In other words, there is not only one way to build a LCA model. 

One modelling issue is how activities are inked together in a product system. This is relevant for practitioners as well as database providers. For example, the way single activities are linked together in one LCA database is different from the way it is done in another. Think about it, only ecoinvent that is a single data provider publishes three versions of the same database with three different ways of linking activities together!

When we look at the different ways of linking the activities of the product system together, rather than at the differences in the amounts exchanged, we refer to the **uncertainty in our model**. 

More in general, the model uncertainty goes also beyond linking activities. The LCA practitioner makes several other modelling choices, assumptions, and approximations that all can influence the final results. 

There is a [recent scientific paper](https://doi.org/10.1016/j.jclepro.2020.122304) investigating what happens when different practitioners model the same system. Spoiler: the result is different because they make different choices, depending on their personal understanding of the problem and data and their experience[^2]. 

At this point I should probably make a further distinction between what are purely methodological choices like the choice of modelling approach (we can even call it a **philosophy**: attributional, consequential) that leads to differences in how supply mixes and multifunctional processes are modelled, and what are instead practitioner-specific choices, like choosing a specific size of lorry to model road transport. While the latter is a potentially improvable with better knowledge and data availability, the former is a choice that should be applied **consistently** within one project and especially **aligned** to the question the LCA intends to answer.    

# Some perspective

A bit of overall analysis now. This is an excellent example of typical issues in LCA, in particular.

- The user has a problem to solve, needs to make a model that provides an answer to a certain question: "what is the life cycle impact of X...". This user has then a lot of modelling **choices**. Some make more sense than others, some are useful, some are wrong. 

- LCA models can be complicated, but at the same time a substantial simplification of reality. Making comparative assessments is tougher than one might think, as one needs to match assumptions and system boundaries.There are **tons of uncertainties** to be aware of. 

- It is legitimate to ask why different LCA studies have different results. But the fact that the two results are different is **not necessarily a mistake** _per se_. Differences can be explained by a deeper analysis, if we can actually look into the data. Therefore model transparency is important. _Show me the dataaa!_

- You can have full transparency but if you don't know how to **interpret** or decode this information, you are stuck anyway. That is why training and experience in LCA should not be underestimated. For example, one might have to look into what is "missing from" - rather than into what is "included in" - a dataset or model (cf. above on completeness).

## For LCA students using LCA databases

It can be difficult to choose processes from a database...Often students ask me if this or that dataset is _the right one_. I don't know any database by heart, and even if I did I could not answer this question directly. One needs to become independent. I can only show _how_ one makes sure the dataset is the right one, or _why_ it is not. I can only teach _the process_. Which in the end is quite simple, read a description, open the dataset to check out what is inside, run the analysis for the dataset alone to see how it works. If it matches what you will expect, and if it is a sufficiently close approximation of what you have in mind, then is very likely the right one.

Or, as Gabor wrote me in our correspondence about this post: 

>_One of the lessons learnt should be: don't pick processes based on the name alone, if you don't know what the activity actually represents, read some documentation._ 

Basically the polite equivalent of [RTFM](https://en.wikipedia.org/wiki/RTFM).


&nbsp;


[^1]: Students, you are my target audience here. 


[^2]: To be honest I had wanted to do this very same study in a long time but these guys were faster than me....well I can't be everywhere. _Uncertainty in LCA: An estimation of practitioner-related effects. Scrucca F. et al., Journal of Cleaner Production, 268, 122304, 2020 [https://doi.org/10.1016/j.jclepro.2020.122304](https://doi.org/10.1016/j.jclepro.2020.122304)_