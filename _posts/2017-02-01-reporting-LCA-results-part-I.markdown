---
layout: post
title:  "How to structure a LCA report"
date:   2017-02-01
tags: [scientific writing, life cycle assessment]
excerpt: A post for LCA practitioners with communication issues.
---


{: .center }
![Desk_order]({{ site.url }}/assets/desk.jpg)
<center><i><font size="2"> “Be regular and orderly in your life like a bourgeois, so that you may be violent and original in your work”
― Gustave Flaubert (Photo: Massimo Pizzol)</font></i></center>

&nbsp;

Reporting and communication are important elements in making understandable, transparent, and reproducible Life Cycle Assessment (LCA) studies. Yet very little has been written on how to report LCA studies _the right way_.

Sure enough there is a section called _Reporting_ in the [ISO14044 standards](http://www.iso.org/iso/catalogue_detail?csnumber=38498). And this section is a long bullet-point list of requirements specifying **what to include** in a LCA report. I have never seen a report that covers all the points, but let's keep this for another post. Another famous documentation on the topic are probably the _"ten commandments" of Heijungs[^1]_ which is a nice reading I recommend. In his paper Heijungs teaches **how to speak** LCA language. That paper deals with the correct use of LCA terminology in scientific articles.

But there is another problem that is not covered by these sources and that I often encounter when reviewing (and writing!) LCA reports: **how to structure** a LCA report. Poor structuring of LCA reports complicates the understanding of the study and ultimately impedes the comprehension of its message.

So in this post I describe two typical problems in structuring LCA reports and propose practical solutions to overcome them. In the context of this post a _LCA report_ is defined as any document intended to thoroughly communicate the making and the outcome of a LCA study. Thus, here both a student project report and a scientific article are examples of LCA reports. As usual in this blog the proposed ideas and recommendations are based on my experience as LCA researcher and teacher, _so these are things that I have tried and work well **for me**_, but it's not dogma[^2].

## 1) The four ISO phases are not a report structure

They are a **working process**. In fact LCA is usually called an _iterative procedure_. So, using the four phases as the outline of a report is a poor choice. They _can_ be used in this way, obviously. But I don't really see the advantages. Building a chronological storytelling of the work done, in the sense that one first reads about goal and scope, then inventory, etc., is inaccurate because the working process has certainly not been linear. Moreover, there are better structure templates.

Writers of scientific papers would probably (have to) follow the _Introduction - Methods - Results - And - Discussion_ structure, so-called [IMRAD](https://en.wikipedia.org/wiki/IMRAD). The IMRAD is well established and good guidance can be found on how to follow it correctly, so it's an easier choice for those who prefer predefined structures. In the table below I show an example of fitting ISO phases and IMRAD structure. This is one possible way  - there may be others too - and the list is non-exhaustive. In the table and in the rest of this post _LCI = Life Cycle Inventory_ and _LCIA = Life Cycle Impact Assessment_.

{: .center }
| IMRAD |
| --- |
| **Introduction** |
| ... |
| Goal of the LCA |
| Decision to be supported |
| **Methods** |
| Functional unit |
| System description and alternatives |
| Modelling approach (e.g. consequential) |
| Chosen LCIA method |
| Key LCI data  |
| Methods for sensitivity/uncertainty analysis |
| ... |
| **Results** |
| Key LCIA results |
| Results of sensitivity/uncertainty analysis |
| **Discussion** |
| Limitations of the study |
| ... |
{:.mbtablestyle}

&nbsp;

Fortunately there are also those who can choose report structure freely. So why should one stick to the four phases? One may instead choose an original, imaginative, and unique structure that fits the report's purposes. Plus, one may have a valid reason to present only specific things, e.g. LCIA results only. And this leads me to the second point.


## 2) Just put stuff in the appendix

I read some days ago a twitter post saying something like: _"Check out the LCA of product X! Oh wait, it's 300 pages..."_ I am puzzled about that too...who is actually gong to read all these pages?

In LCA, it feels like **no space will ever be large enough** to report all the study materials. This problem is bogus. It is not only inevitable but also necessary to make a selection of what to present. Because in LCA like in any other discipline some things are way more relevant than others. Most importantly, let's not confuse communication and documentation. A critical selection of the material is always possible and the easiest thing is to **organize stuff in a main document plus appendix**. In the case of a scientific journal article this would be the _manuscript_ and _supplementary material_.

The former one is usually concise and should tell the main story for those who are simply interested in understanding what is going on and what are key take-home messages. The latter is used to document extensively the details behind the study and to provide additional information for those who want to understand what is going on _under the hood_ and e.g. use some of the data or results for their own analysis. A quick google search will tell that the word _appendix_ derives from the Latin word _appendere_, i.e. _‘hang upon’_. So it's the place where to hang all the stuff one doesn't really need right now but may be useful later on...

Here below a summary of differences between main document and appendix.

{: .center }
| Main document | Appendix
| --- | ---
| Limited space or word limit	| Plenty of space
| Rigid structure (e.g. IMRAD) |	Flexible structure
| More text than tables/figures	| More tables/figures than text
| Focus on communication | Focus on documentation
{:.mbtablestyle}

&nbsp;

And here some suggestions on what should be included in the main document and in appendix, for the case of LCA reports.

{: .center }
| Main document | Appendix
| --- | ---
| Flow chart of product system	|  
| Selected foreground LCI data	| All remaining foreground LCI data
|   | Names of background system processes
|   | Equations and sources for LCI
| Allocated LCIs	| Unallocated LCIs + Allocation procedure details
| Selected LCIA impact categories	| All LCIA impact categories
| Summary of LCIA relative values (contribution analysis)	| List of LCIA absolute values
{:.mbtablestyle}

&nbsp;

### I am not done yet...

...but I will stop here anyway, because this post is getting too long!

I will add some more in a future post and also draw conclusions on this topic.

&nbsp;

[^1]:	Heijungs, R., 2013. _Ten easy lessons for good communication of LCA._ Int. J. Life Cycle Assess. 1–4. [doi:10.1007/s11367-013-0662-5](http://link.springer.com/article/10.1007/s11367-013-0662-5)
[^2]: You have a valid reason to think I am writing nonsense or you feel an urgent need to add your two cents? Please [write me an email]({{ site.url }}/about/) and there are good chances I'll extend this post to reflect your inputs...
