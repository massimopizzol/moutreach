---
layout: post
title:  "From Aalborg to Beijing via Monte Carlo"
date:   2017-04-20
tags: [articles]
excerpt: A research on PM2.5 air pollution and its social costs
---

![Chinese students running]({{ site.url }}/assets/CNstuds.png)
<center><i><font size="2"> Students running in Beijing, some with mask (Photo: Hao Yin)</font></i></center>


This post is about a research article[^1] I co-authored with Hao Yin, who is a PhD student enrolled at a joint program between Aalborg University and the School of Environment at Beijing Normal University.

Hao is a Beijingese and experiences air pollution in first person. Her research is about an environmental issue she has to deal with everyday.
In particular this paper addresses exposure to [PM2.5](https://en.wikipedia.org/wiki/Particulates). PM2.5 is particulate matter with a diameter lower than 2.5 [micrometres](https://en.wikipedia.org/wiki/Micrometre).

The study is about Beijing, which has been suffering of serious air pollution problems in the last years, check e.g. their air quality [here](http://aqicn.org/city/beijing/).

# What's new about this study?

When Hao arrived to Denmark in summer 2015 she was struggling with how to calculate the __externalities__ related to PM2.5 pollution and its health impacts. These are the costs that pollution puts on society and that are often not accounted by economic indicators. One of the difficult tasks was keeping track of all the studies made in this area.

The problem was that PM2.5 exposure is correlated with many and various adverse health impacts and typically each exposure assessment study focuses on one or more of these, but not all of them. Moreover, not all studies cover the entire __impact pathway__ from emission to exposure, impact, and ultimately cost. Also, these estimates are highly uncertain and results can change quite a lot across studies.

_So what if we wanted to know the total cost of PM2.5 pollution in Beijing?_

To figure this out, it is not sufficient to simply sum up estimates from different studies. The first reason is because of __double counting__ of impacts. One study may cover cardiovascular and respiratory mortality, while another lung cancer and respiratory mortality. So merging the two would result in a double counting of respiratory mortality cases.

The second reason is that each study makes __different modelling assumptions__. For external costs estimation one study may use the value of statistical life (VSL, an estimate of the willingness to pay to avoid a decrease in life expectancy) while another may use the human capital approach (an estimate of the output produced by an individual over an expected lifetime). So they are not directly comparable.

Hao reviewed all the various PM2.5 related health impacts and classified them to avoid double counting. Then took exposure-response coefficients from each available epidemiological study (or at least as many she could find...), and applied different approaches to external costs estimation to give an upper and lower bound of the external costs due to PM2.5.

# What about uncertainties?

To account for uncertainties, Hao applied the uncertainty analysis technique called __Monte Carlo simulation__. The name is great and the tool is great too. In short, this means that the calculation of external costs is performed several thousand times, and each time the input values in the model change a bit, _fishing_ from the probability distribution of each parameter.

This allows to get a list of thousands of results (the _distribution_) for each model output. This information is much richer than the information provided by a single point value, because tells how the result varies and in which range. In particular, in this study the uncertainty of parameters such as PM2.5 concentration, exposure-response coefficients, and economic cost per case was taken into account.

The simulation was made using the software R (Hao had never used R before but learned it super fast!). [Here](https://www.r-bloggers.com/probability-and-monte-carlo-methods/) an example of R code for Monte Carlo simulation, although not too popular-style, there are R packages for Monte Carlo too...

# PM2.5 pollution costs are substantial!

This paper provides a _reasonable_ estimate of the total health impacts and external cost due to PM2.5 pollution, as well as a quantification of their uncertainty. It's reasonable because takes into account results from several previous studies and aggregates them using a consistent approach. I would define the methodological approach used as a mixture between a __meta-analysis__, a __review__, and an __uncertainty analysis__.

The results showed that the external costs were between 0.3% and 0.9% of regional GDP depending on the modelling assumptions, which is _huge_! But still in accordance with previous studies. Also, we observed that premature deaths due to PM2.5 pollution represent the largest share of costs. Hopefully, studies like this can be used to inform policymakers and the public about the seriousness of PM2.5 pollution and to __internalize__ its costs.


&nbsp;

[^1]: _Yin, H., et al., External costs of PM2.5 pollution in Beijing, China: Uncertainty analysis of multiple health impacts and costs, Environmental Pollution (2017),_ [http://dx.doi.org/10.1016/j.envpol.2017.02.029](http://www.sciencedirect.com/science/article/pii/S0269749116308600)
