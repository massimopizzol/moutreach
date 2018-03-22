---
layout: post
title: "The right bag for grocery shopping?"
date: 2018-03-22
tags: [life cycle assessment, peer-review]
excerpt: Not your Gucci one
---


![Cotton-bag]({{ site.url }}/assets/Cottonbag.jpg)
<center><i><font size="2">"I am not a plastic bag!"</font></i></center>


# Butterfly effect

This is a nice story with many learning points. 

In February 2018 the Danish Environmental Protection Agency - _Miljøstyrelsen_ ([MST](http://mst.dk/service/publikationer/publikationsarkiv/2018/mar/plastposer-lca/)) published a [LCA study](https://www2.mst.dk/Udgiv/publications/2018/02/978-87-93614-73-4.pdf)  comparing different bags for grocery shopping. Plastic versus paper versus cotton etc. The study was conducted by the Danish Technical University (DTU) and reviewed by the consultancy company COWI. All people involved were experts in either LCA or waste or both. 

After publication, the study had substantial exposure in the Danish newspapers. These media reported the [sensational news](https://politiken.dk/forbrugogliv/forbrug/art6379116/En-stofpose-er-f%C3%B8rst-bedre-for-milj%C3%B8et-end-en-plastikpose-n%C3%A5r-den-har-v%C3%A6ret-brugt-7.100-gange?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BFVS1Aci%2BRRmCFj%2BWnaiHuQ%3D%3D) that one must reuse 7100 times a cotton bag to have the same impact as using a plastic one. The plastic industry was happy to hear that and [echoed](https://plast.dk/2018/03/ny-analyse-slaar-fast-plastposen-er-bedst-for-miljoeet/) the news. I saw this in LinkedIn and thuoght _What?_ I did a screening LCA some time ago about reusable cutlery and results were very different. I would have expected this number to be somewhere between 10 and 50.  

I checked the study. It is 144 pages long and very complete. It includes the review comments as well, which is nice. However, there are issues. **Note:** it is normal for an LCA study to present issues. 95% of these are not mistakes _per se_ but are rather modelling choices or assumptions that I would not make or make differently. However, I found some important mistakes too in the MST study. Together with some colleagues we wrote a letter to MST pointing them out, hoping they can help revising the study. I discuss some of them in the **Getting technical** section below, read there for details.  Now I want to get to the main point of this post. 


The point is the [butterfly effect](https://en.wikipedia.org/wiki/Butterfly_effect). The researchers made some mistakes. The reviewers didnt' spot them. The commissioner of the study published it too quickly. The journalist(s) cherry picked a big  number and didn't read or understand the report. The general public reacted. An easily resolvable issue becomes a big deal. As damage control the researchers [defended](https://videnskab.dk/naturvidenskab/skal-stofposen-bruges-7100-gange-for-at-vaere-mere-miljoevenlig-end-plastikposen) their study publicly and aknowledged its [limitations](https://www.information.dk/indland/2018/03/dtu-erkender-lidt-kaek-konklusion-rapport-plastikposer?utm_source=Morgendagens%20digitale%20avis%20p%C3%A5%20mail&utm_campaign=d4b1013094-EMAIL_CAMPAIGN_2018_03_20&utm_medium=email&utm_term=0_5b6847ab1d-d4b101309) (all links in Danish). 

# Learning points

I think that there is much to learn from this case. Many things went wrong and shuold be reflected upon. Mistakes in the research design, ineffective review, poor comunication and reporting, etc. Why all this happened? How to avoid this in the future?

Three considerations:

1. **Reality check**. LCA has a bad reputation already in many environments, because some people don't like the uncertainty related to the many assumptions and complexity and the untransparency of the models used. It is easy to get fooled by such models, that are simplifications of reality. The MST study results should have been presented to some stakeholders before publication: consumers and producers. Through critical questions I believe they would have spotted the shortcomings of the study.

2. **Learn and share**. The review was ineffective in this case. The reviewers didn't understand the study - for some reason. To me the only way out of this is investing in education and transparency. Teaching our students how to do LCA studies correctly and how to identify the shortcomings of existing ones.  Transparent reporting and reproducible models allow to easily find mistakes and for a deeper understanding. This can only improve the quality of future LCA studies.

3. **Get the right focus.** The focus of the study should have been on getting correct and new data for reuse times for each bag, because that is the single most important parameter affecting the results. The biggest problem with plastic bags nowadays is the littering in the ocean and its consequences on the marine ecosystem. This is not a Danish problem, as most plastic bags are collected and either recycled or burned with energy recovery. The biggest problem with textiles is not grocery bags but the overconsumption of clothes combined with poor recycling. Let's focus on the real problems please.


# Getting technical  

You arrived here, it means you want to know what is the main problem in the study. Let's try to be as popular as possible.

In LCA, the _function_ is what the product should do. The _functional unit_ is a quantification of this function. The _reference flow_ is the amount of product required to perform the functional unit. 

Let’s take two products as an example: a plastic bag and a cotton bag. For simplicity, let’s assume they have identical functionality i.e. they are fully comparable alternatives. If the functional unit is _to carry a certain amout of grocery_ then the reference flow is the _number of bags_ required to carry this amount. The functional unit in the study was chosen to match the capacity of a LDPE plastic bag (22 l and 12 kg), therefore the reference flow for the plastic alternative is exactly _1 plastic bag_. Good.

How many cotton bags are needed to perform the same function? The cotton bag can be reused multiple times and this must be taken into account. Let’s assume the cotton bag can be used 10 times in total. Just as example. We then need only 1/10 of a cotton bag to perform the desired function. This is better communicated in other words: if one goes shopping 10 times, one would need to buy **either** ten disposable plastic bags **or** one reusable cotton bag. Thus, if the reference flow for the plastic alternative is _1 plastic bag_, the reference flow for the cotton alternative must be _1/10 cotton bag_. If the reference flow for the plastic alternative is _10 plastic bags_ then the reference flow for the cotton alternative must be _1 cotton bag_. I am still assuming it is reused 10 times in this example. However, Table 3 in the study shows that for shopping one time one would either need one plastic bag or one cotton bag. This also means that for shopping ten times one would need either ten plastic bags or ten cotton bags. This is incorrect as I just demonstrated.

The study says that calculating the number of reuse times would raise a _"...discussion among the stakeholders on the effective expected lifetime of each carrier bag..."_. Therefore, the study didn't estimate the number of reuse times to set the reference flow as I explained above. As a **workaround**, the study calculated the number of times a bag needs to be reused to match the impact of the reference bag. This seems like a smart solution, but still has problems.

The calculation is based on this assumption: _every time a cotton bag is reused, the corresponding use of a plastic bag is avoided_. This is also clear from Equation 1 (p. 35) and Figure 10 (p.36). In other words: every time a cotton bag is reused, its impact is reduced by the impact of a plastic bag. I find this approach misleading. Firstly, the impact of cotton bags has nothing to do with the impact of plastic bags, the two are **independent** from each other. Secondly, I have explained above that if the functional unit is to carry grocery home once then the reference flow, i.e. the number of bags required, is _1/10 cotton bag_, because the cotton bag can be reused 10 times. This is **not the same** as saying that one needs _1 cotton bag - 9 plastic bags_. Well, actually, this is valid only in one specific case: the case when the impact of one plastic bag is exactly 1/10 of the impact of one cotton bag. But is this likely? 

We still don't know how many times a cotton bag is used or can be reused in reality, and we still don't know what is the impact of choosing a cotton bag **to perform the function** needed. The only actual information provided by the report is: the impact of producing 1 plastic bag, using it once, and disposing of it; the impact of producing 1 cotton bag, using it once, and disposing of it; a number that indicates when these two impacts are identical. This doesn't answer the question of what is the impact of carrying grocery home with one or the other bag. These quantities can't be realistically compared because nobody uses cotton bags only once. So we can't make a decision.

The key issue remains **determining the number of uses** for each bag. This is **the** most important parameter. It's a pity that the study didn't focus on getting accurate estimates for this. I can think about some ways to find the data needed: 

- Measuring the tearing of cotton bags in a lab experiment
- Using literature data from previous studies
- Asking consumers in a survey
- Asking bag producers in a survey

In my opinion this should have been the focus of the study. Getting robust extimates for reuse times, with uncertainty values attached, would have allowed making a better LCA model and obtain interesting, perhaps original, and certaintly more nuanced results.


[^1]: Mutel, C. Brightway: An open source framework for Life Cycle Assessment. J. Open Source Softw. 2017, 2 (12), 1–2.

