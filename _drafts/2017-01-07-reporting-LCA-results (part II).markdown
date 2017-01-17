---
layout: post
title:  "More on LCA report structure (somehow)"
date:   2017-02-15
tags: [scientific writing, life cycle assessment]
excerpt: The second part of a previous post on communication issues in LCA.
---

This is the continuation of a previous post on problems in structuring LCA reports. Here I add some more beef to this topic and draw some conclusions. As in the previous post, for _“LCA report”_ I intend any document where a LCA study is thoroughly presented (anything from student project report to scientific article).

## Consistency, this stranger.

_Give me consistency or give me death[^1]_...consistency between flow charts, inventory tables, and impact assessment figures.

Let's assume that in a LCA report the foreground system of product X is described with a flow chart that includes three processes named respectively: _production of X_, _use of X_, _disposal of X_.

Now a couple of pages below in the same report there are three inventory tables. One is about the process _X production_, the other one is called _use stage_, and the last one is called _waste management_. Hmmm...are they the same processes as above? Maybe, who knows. But let's continue.

Further below in the report the results section proposes a nice and colorful [stacked barchart](https://en.wikipedia.org/wiki/Bar_chart) that reports the contribution analysis for a certain impact category. The chart shows one large bar named _use of X_ and many thin bars with strange names such as: _Barley grain, feed {GLO}| market for | Conseq, U_ and _Biowaste {RoW}| market for | Conseq, U_... (yes these are [ecoinvent database](http://www.ecoinvent.org/database/database.html) names, so it's background processes...).

Well, at this point the reader is probably getting a headache while scrolling up and down the document trying to understand what corresponds to what. The solution to this mess is as simple as this: same names and same number of processes presented in the flow chart, inventory tables, and impact assessment figures. _It's consistency, baby._    


## When LCIA results read like a cure for insomnia...

then something is very wrong. It is not uncommon in LCA reports to find the life cycle impact assessment (LCIA) results presented with a contribution analysis (see previous point) followed by some text that reads like:

> ...in the BAU scenario, the production stage contributes 10-20% to three impact categories (GWP, POCP, AP) and 5% to two impact categories (EP and IR). The use of product Y in scenario 2 results in lower impacts (10-15 %) for four impact categories (HT non carc, HT carc, EcoTox marine, EcoTox terrestrial), and 10-15% lower impacts for two impact categories (GWP and FF) in comparison with the BAU scenario results...

Seen anything like this before? Boring...

OK, reporting impact assessment results is objectively difficult. So may impact categories, so many processes, etc. The key is using figures and text **in combination**. A picture tells more than 1000 words...but a terrible picture probably tells 1000 terrible words. So let's first make a nice and correct figure with _one key message_. Then a relevant explanatory text for the life cycle impact assessment results should **describe trends and tradeoffs rather than reporting plain values**. Also, the text should not repeat information that is already in the figure (or in the supporting information...). The text becomes interesting when it explains the figure (because confirms that the reader's interpretation of the figure is the same as the authors') and when it adds something to the figure. Here an example of how the text above could be revised:

> Figure 1 shows that for several impact categories the production stage is a major contributor to the total impacts compared to other stages. This is due to the activities X and Y performed in this stage. In scenario 2, the use of product Y leads to lower results in the toxicity categories compared to the BAU scenario, due to the fact that the production of Y does not emit heavy metals.

### Concluding on LCA reports structure



[^1]: Sorry, [Dead Kennedys](https://en.wikipedia.org/wiki/Give_Me_Convenience_or_Give_Me_Death).
