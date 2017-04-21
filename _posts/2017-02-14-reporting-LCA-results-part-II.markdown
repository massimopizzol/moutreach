---
layout: post
title: "More on LCA report structure (somehow)"
tags: [scientific writing, life cycle assessment]
excerpt: The second part of a previous post on communication issues in LCA
---


{: .center }
![Desk_order]({{ site.url }}/assets/desk.jpg)
<center><i><font size="2"> “One day I will find the right words, and they will be simple.”
― Jack Kerouac, The Dharma Bums (Photo: Massimo Pizzol) </font></i></center>

&nbsp;

This is the continuation of a [previous post]({{ site.url }}/2017/02/01/reporting-LCA-results-part-I.html) on problems in structuring LCA reports. Here I add some more on the topic and draw some conclusions. As in the previous post, for _LCA report_ I intend any document where a LCA study is thoroughly presented i.e. anything from student project report to scientific article.

## 3) Consistency, this stranger

_Give me consistency or give me death_...said the wise man[^1]. Consistency between flow charts, inventory tables, and impact assessment figures.

Let's assume that in a LCA report the foreground system of product X is described with a flow chart that includes three processes named respectively: _production of X_, _use of X_, _disposal of X_.

A couple of pages below in the same report there are three inventory tables. One is about the process _X production_, the other one is called _use stage_, and the last one is called _waste management_. Hmmm...are they the same processes as above? Maybe, who knows. Let's continue and see.

Further below in the report the results section proposes a nice and colorful [stacked barchart](https://en.wikipedia.org/wiki/Bar_chart) that reports the contribution analysis for a certain impact category. The chart shows one large bar named _use of X_ and many thin bars with strange names such as: `Barley grain, feed {GLO}| market for | Conseq, U` and `Biowaste {RoW}| market for | Conseq, U`... Yes, these are [ecoinvent database](http://www.ecoinvent.org/database/database.html) names, so it's background processes...

At this point we (the readers) are probably getting a headache while scrolling up and down the document trying to understand what corresponds to what. The solution to this mess is as simple as this: **same names and same number of processes presented in the flow chart, inventory tables, and impact assessment figures.**

 _It's consistency, baby._    


## 4) When LCIA results read like a cure for insomnia...

...then something is probably wrong. Recently I discussed with the co-authors of a paper how to report the LCIA results in a draft manuscript. The main author was initially concerned about the text written, because it read like this (kind of):

> ...in the BAU scenario, the production stage contributes 10-20% to three impact categories (GWP, POCP, AP, HT carc) and 15-30% to two impact categories (EP and IR). The use of product Y in scenario 2 results in lower impacts (10-15 %) for four impact categories (HT non carc, HT carc, EcoTox marine, EcoTox terrestrial), and 10-15% lower impacts for two impact categories (GWP and FF) in comparison with the BAU scenario results...

So, a lot of numbers, lists of impact categories, and quite detailed information. Personally, I found this too heavy a read (and a bit boring). In the other authors' previous experience, however, reviewers had appreciated this sort of punctilious reporting of results. _A matter of taste, then?_

OK, reporting impact assessment results is objectively difficult. So many impact categories, so many processes, contribution of stages versus contribution of processes (and foreground versus background), etc. It is then important that **text and figures complement each other**. They actually work well in combination.

Let's assume we have a set of nice and correct figures for contribution analysis. Each figure conveys one key message. Relevant explanatory text for these figures **describes trends and tradeoffs in the LCIA results rather than reporting plain values**.

Why repeating information that is already in the figures (or in the supporting information...)? The text becomes interesting when it _explains_ the figures. Good text confirms that the reader's interpretation of the figure is the same as the author's. Relevant text adds something to the figure.

Here an example of how the text above could be revised for the above mentioned LCIA results:

> Figure 1 shows that for several impact categories the production stage is a major contributor to the total impacts compared to other stages. This is due to the activities A and B performed in this stage. In scenario 2, the use of product Y leads to lower results in the toxicity categories compared to the BAU scenario, due to the fact that the production of Y does not emit heavy metals.

Surely more general, certainly more readable, perhaps more informative? Here another example of how some students summarized their LCA results focusing on two main patterns they had observed.

> In the LCIA results, one main pattern can be identified that is evident from figure X. In all scenarios the  avoided impacts within one impact category are outweighed by the generated impacts. A second observable pattern is that scenario Y always has the highest impact whereas scenario Z has the lowest impact.

Simple and clear. Well done!

### Concluding on LCA reports structure

_The right way_ of reporting LCA results has not been invented yet. In this and the previous post I identified four practices that in my experience work best. Avoid using the ISO phases as outline, put stuff in appendix, be consistent between LCI and LCIA, text and figures complement each other.

A good deal of this is a matter of personal taste, and there may be better ways of structuring LCA reports too. [Rock the Casbah](http://www.urbandictionary.com/define.php?term=Rock%20the%20Casbah) and find them.

Yet, if one day you find a really annoying reviewer...who is pointing out these issues in what sounds a very irritating tone...there is a good chance it is me...


[^1]: Sorry, [Dead Kennedys](https://en.wikipedia.org/wiki/Give_Me_Convenience_or_Give_Me_Death).
