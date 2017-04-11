---
layout: post
title:  "Wood networks are nice"
date:   2016-12-07
tags: [articles, life cycle assessment]
excerpt: I have written this article together with Marco and I am really proud of it
---
![Network screenshot]({{ site.url }}/assets/Network.PNG)

I have written this article[^1] together with [Marco][1] and I am really proud of it.

### Why we did it
We wanted to answer a simple question: **where does the wood of tomorrow come from?** This is an important question because many are looking at wood as future energy source or construction material. Energy from waste wood residues may contribute to reducing our dependency from fossil fuels, as woody feedstock can be used for heating and for producing liquid fuels too. In fact, this study was part of the larger [C3BO project][3] on producing fuel from wood residues. Wood is also praised as a sustainable construction material and future substitute of cement. _So who is going to produce all this wood and where?_ Once we figure this out, we can investigate in detail what impact wood production will have on the environment in terms of land occupation and emissions. This will allow making better informed decisions and evaluate which energy source and construction material is more **eco-efficient**.

### How we did it
To answer this question we had to study the market of wood products. We live in the times of globalization, so products are traded globally. However, to what extent is this the case for wood products? Chips and particles are light and cheap, but sawn wood is heavy and costly. So there must be differences in the way they are traded. The market may be **not that global** after all. There may be many local markets instead. We looked at trade data from [FAOSTAT][2]. These show the amount of wood products exchanged by all countries in the world via exports and imports, in the last 15 years. **We realized that this was a _network_**! A trade network to be precise. At that point we knew that we could use some powerful mathematical tools (_network analysis_, _clustering algorithms_)[^2] to crunch the data and see whether the trade network was fragmented into smaller networks, called _communities_, and whether these could represent **geographical markets**.

### What we found
We found that the wood trade network could be actually split into smaller geographical markets, which correspond to our communities. Most interestingly the trade network of each wood product was fragmented in a different way. For some products like wood pulp we could observe a huge, global market, with several countries trading between each other. For some other products like sawn wood we could see many different markets with countries trading with their neighbors only. The nice thing is that in the fragmented networks **the identified communities matched quite well existing geographical areas**, e.g. Northern Europe and Asia. This confirmed our expectation that the markets relate to geographical proximity, trade areas (e.g. the EU), and the combination of both.

### What next?
Well this was not sufficient to fully answer our initial question. We had to do some other things too, like checking if these geographical markets **changed over time** (they were pretty stable in the last 15 years), and finding who are the most successful countries to produce wood products in each market. Why this last part? Because we assumed that **today’s most successful producers will be tomorrow’s suppliers of wood**. We used a simple approach here. We calculated whether the production of wood products in each country had been increasing or decreasing over the last 15  years. Unfortunately, the results were not robust and changed too much depending on the time-span under analysis, indicating that a more advanced model would be needed. **Ouch!** We'll take it from here in our next study.

&nbsp;





[^1]:  _Pizzol M, Scotti M, Identifying marginal supplying countries of wood products via trade network analysis, The International Journal of Life Cycle Assessment (2016)_ [doi:10.1007/s11367-016-1222-6](http://link.springer.com/article/10.1007/s11367-016-1222-6)
[^2]: _The R code used for doing this analysis is available at my github [profile](https://github.com/massimopizzol/Wood_trade_network_analysis)_

[1]: http://www.geomar.de/en/mitarbeiter/fb3/eoe/eoe-n/mscotti/
[2]: http://faostat.fao.org/
[3]: http://www.et.aau.dk/research-programmes/biomass/activities/c3bo/
