---
title: "Charity During Crackdown: Analyzing the Impact of State Repression of NGOs on Philanthropy"
author:
- name: Suparna Chaudhry
  affiliation: Christopher Newport University
  email: suparna.chaudhry@cnu.edu
- name: Andrew Heiss
  affiliation: Brigham Young University
  email: andrew_heiss@byu.edu
date: July 9, 2018
published: Please do not cite without permission.
git-repo: https://github.com/andrewheiss/ngo-crackdowns-philanthropy
reference-section-title: References
toc: false
abstract: >-
  TODO: NEED TO MAKE THIS BETTER AND PUNCHIER
  State repression of civil society organizations—particularly through the use of legislations—has become ubiquitous in recent decades. How do these legal restrictions on NGOs impact patterns of private philanthropic giving and individual donor decision making? With decreasing funding for NGOs working in contentious issue areas, and a lack of philanthropic culture in many developing countries, numerous NGO rely on funds from private donors in Western countries. Using a survey experiment, we explore how state crackdown against NGOs changes private donors preferences and behavior based on the issue area of the organization, and the main source of its funds. We find that legal crackdowns on NGOs have a moderate positive effect on the probability that a donor gives money, with a significant positive effect in only one condition—donors are more likely to donate to privately funded human rights NGOs that are legally besieged. While crackdowns do not have a strong effect on the likelihood to donate, we find that already-likely donors tend to give substantially more to legally restricted NGOs, in particular those that work on humanitarian issues generally, privately-funded human rights organizations, and government-funded humanitarian organizations. We conclude by discussing the implications of our results for the sustainability of civil society organizations in developing countries.
thanks: >-
  We thank Mark Buntaine, Jeffrey Friedman, and Thomas Leeper for their helpful comments and input. We also thank Samantha Camilletti and Joshua Dutro for excellent research assistance. This experiment received approval by the human subjects research committees at both Christopher Newport University (018.042) and Brigham Young University (E18104). We preregistered our hypotheses and research design at the Open Science Framework, and our preregistration protocol is available at <https://osf.io/dx973/>.
---

In January 2011, the Egyptian uprisings against Hosni Mubarak presented a window of opportunity for domestic non-governmental organizations (NGOs) to transform themselves into agents of democracy. However, just as these organizations began to take advantage of new levels of public engagement and civic freedoms, successive Egyptian governments have proposed and passed new legislation designed to restrict foreign funding for domestic NGOs. Subsequently, international donor agencies cut support for Egyptian NGOs out of concern that they would be accused of offering illegal support for domestic civil society organizations [@Brechenmacher:2017]. Egypt is not alone in restricting NGOs. India, Bolivia, Hungary, China, Russia, and others have required that funds be routed through state-owned banks, mandated that funds be used for non-political purposes, or prohibited NGOs from accepting any funds from foreign sources [@cite-all-these-things].

These restrictive laws have had tangible consequences for NGOs worldwide. Official aid flows have decreased substantially in countries that have imposed anti-NGO laws [@ChaudhryHeiss:2018; @DupuyPrakash:2018], and both large foundations and government agencies have reduced their contributions to organizations in restrictive countries [@Brechenmacher:2017]. NGOs have increasingly turned to private donors to cope with the loss of funding from larger sources. However, donations from *domestic* donors are unreliable and inconsistent. Citizens in many countries are often too poor to support local NGOs [@citeme], countries may lack a culture of philanthropic giving [@citemetoo], and repressive states can coerce local philanthropists into giving to non-contentious causes or even prohibit local donors from contributing at all [@citemeaswell]. Accordingly, NGOs working abroad have increasingly sought out funds from *foreign* individual donors in countries with institutions and regulations better suited for philanthropy [@citeme]. Given their increased importance in global civil society, how do individual donors feel about donating to legally besieged NGOs abroad? Do legal restrictions on NGOs influence the decision to support these organizations? 

{{{

TODO: Ideally this bracketed section should fit in a single paragraph. There are two sentences that can potentially link stuff together, but I can't figure out the best way to make everything flow

We investigate these questions by looking more broadly at the structural determinants of private philanthropy. Substantial research has examined the private motivations of donors, including altruism, reputational benefits, and alignment with personal values [@BilodeauSlivinski:1997; @Wiepking:2010; @BekkersWiepking:2011]. Less work has looked at the structural mechanisms behind the choice to donate, including host country politics and organizational characteristics.

TODO: this is our main theory: Structural things like politics and restrictions → shortcuts for how trustworthy an NGO is → more likely to donate to it

Perfectly rational donors would scrutinize each aspect of a nonprofit's structure and institutional environment prior to donation, but this rarely occurs in practice. Instead, donors rely on shortcuts and heuristics to determine the trustworthiness of NGOs. Donors make cursory judgements about an organization's issue area, mission, vision, and values and seek out supplementary information from friends, family, and acquaintances [@SzperPrakash:2011; @Sloan:2009]. Structural features are an important type of institutional heuristic. TODO stuff about how structural features inform opinions of NGOs, like how people prefer to donate to domestic ones more than international ones, etc.

As governments continue to impose legal restrictions on NGOs, the effect of these structural-level conditions may override individual-level causes. Individuals may be privately motivated to engage in philanthropy—however, if NGOs of their choice are prevented from operating, or if target countries engage in a legal crackdown of NGOs, donors can be deterred from actually donating.

}}}

We test private donor responses to three different structural factors connected to legal crackdowns on NGOs. First, individual propensity to donate could be related to the *domestic politics* in the countries where international NGOs operate. The presence of legal crackdowns abroad can serve as another structural signal of NGO trustworthiness and deservingness. Legal restrictions could convey to donors that NGOs undertake important, which is why governments perceive them as threatening. We expect that government restrictions abroad will increase the likelihood of donation and the amount donated, thus yielding our first hypothesis:

> **H~1a~**:  Donors will be more likely to give to NGOs that face legal crackdowns abroad.
> 
> **H~1b~**:  Donors will give more to NGOs that face legal crackdowns abroad.

Second, legal crackdowns abroad could interact with structural factors within NGOs themselves. Because many states have restricted NGOs out of fear of Western influence in their countries [@Chaudhry:2016; @Carothers:2015; @DPR:2015], the *contentiousness of NGO issue areas* could serve as an effective structural heuristic for private donors. NGOs focused on contentious issues like human rights run the risk of getting shut down, increasing the possibility of donors' resources being wasted. Therefore, we posit that donors will be more likely to donate to less contentious humanitarian issues because these are seen as uncontroversial, apolitical, and directed towards the most deserving of need. We expect that crackdowns abroad will amplify donor affinity for humanitarian NGOs, leading our second hypothesis:

> **H~2a~**:  Donors will be more likely to give to legally besieged NGOs working on humanitarian issues.
> 
> **H~2b~**:  Donors will give more to legally besieged NGOs working on humanitarian issues.

Third, *the source of NGO funding* could influence donor behavior. The distinction between private and government funding can signal an organization's deservingness. We hypothesize that donors who see that organizations are privately funded will feel that they can also contribute and help, while donors who see that organizations are funded by the government will feel less inclined to contribute, since the NGO does not need (or might not even typically accept) their donation. As with contentiousness, we expect that legal crackdowns again amplify donor preference for privately-funded NGOs. This sets up our final hypothesis:

> **H~3a~**:  Donors will be more likely to give to legally besieged NGOs that do not receive substantial funding from government sources.
> 
> **H~3b~**:  Donors will give more to legally besieged NGOs that do not receive substantial funding from government sources.

Our results show that the domestic political and legal environments of NGO host countries can influence donor behavior. We demonstrate that private donors are generally responsive to the legal difficulties international NGOs face abroad. While crackdowns do not have a strong effect on the likelihood to donate, we find that already-likely donors tend to give more to legally restricted NGOs, particularly when these organizations work on humanitarian issues and are privately funded. 


# Methods

## Sample

We test each of these hypotheses with a between-subjects vignette-based survey experiment with participants recruited from Amazon's Mechanical Turk. Our target population is the portion of Americans hypothetically willing to donate money for human rights and humanitarian work abroad. Our convenience sample (March 2017, N = 546) approximates the characteristics of our target population (TODO), since the online same is more educated and less conservative than nationally representative samples.

TODO: Who donates? Do donors skew liberal, young, white? From Buntaine and Prather: "Our manipulation is not affected by level of education (Table S8) and our main results are not conditional on party (Figures S2–S4)"



## Experimental treatments and outcomes

We presented participants with a short paragraph with three manipulated frames, each highlighting different factors that might influence patterns of private philanthropy. The vignette thus results in three manipulated variables: (1) crackdown vs. no crackdown, (2) humanitarian assistance vs. human rights, and (3) government funding vs. private funding. We used the International Rescue Committee (IRC) as our example international NGO because its work easily applies to each possible frame. IRC provides humanitarian assistance and engages in human rights advocacy for refugees, more than a quarter of IRC's income comes from both government grants and private donation, and IRC works in some countries that have passed anti-NGO laws, such as Egypt and Turkey, as well as countries with no such laws. We use a 2 × 2 × 2 between-subject factorial design, with participants randomly assigned to one of eight versions of the following vignette (see Table SUPP and CONSORT diagram in SUPP).[^power]

> The International Rescue Committee (IRC) focuses on *{humanitarian assistance for refugees | human rights for refugees}* *{and works in countries that have recently passed laws that harshly restrict nonprofit organizations | NOTHING}*. A substantial proportion of IRC's funding comes from *{government | private}* donors.

We collected two outcome measures, which we use as our main dependent variables: (1) how likely participants would be to donate to IRC (measured with a 5-point Likert scale ranging from "Extremely likely" to "Extremely unlikely"), and (2) how much participants would hypothetically donate to IRC if they had an extra $100. For ease of analysis, we collapse the likelihood question into a binary variable measuring whether the participant is likely ("Extremely likely" and "Somewhat likely") or not likely (all other responses) to donate. We also included a free response question for exploratory purposes, asking respondents to explain why they chose to donate the amount they indicated.

## Estimation

We test the effect of the three frames on these two outcomes by measuring the differences in the median amount donated and the median likelihood to donate across the crackdown vs. no crackdown condition. We do this by fitting three regression models with indicator variables and interaction terms for each of the conditions.[^anova-regression] We use Bayesian OLS regression for models measuring the amount donated, and we use Bayesian logistic regression for models measuring the likelihood of donation.[^priors] In model specification 1, we test only for the effect of legal crackdowns on the outcome measures; in specification 2, we test for the effect of legal crackdowns on outcomes, conditioned on the issue area the NGO focuses on; and in specification 3, we test for the effect of crackdowns conditioned on both the issue area and the source of NGO funding, yielding these simplified models:

$$
\begin{aligned}
y_{\text{Model 1}} =& \beta_0 + \beta_1 \text{Crackdown} + \varepsilon  \\
y_{\text{Model 2}} =& \beta_0 + \beta_1 \text{Crackdown} + \beta_2 \text{Issue } + \\ 
& \beta_3 \text{Crackdown} \times \text{Issue} + \varepsilon \\
y_{\text{Model 3}} =& \beta_0 + \beta_1 \text{Crackdown} + \beta_2 \text{Issue} + \beta_3 \text{Funding } + \\ 
& \beta_4 \text{Crackdown} \times \text{Issue } + \\ 
& \beta_5 \text{Crackdown} \times \text{Funding } + \\ 
& \beta_6 \text{Issue} \times \text{Funding } + \\ 
& \beta_7 \text{Crackdown} \times \text{Issue} \times \text{Funding} + \varepsilon
\end{aligned}
$$



# Results

@tbl:avg-results shows the average percent of respondents likely to donate to IRC, as well as the average amount donated across all three experimental conditions. To account for uncertainty in these aggregated estimates, we base our inference on predicted values drawn from the posterior distributions of the regression coefficients.[^coefs] @fig:likelihood-medians and @fig:amount-medians show the predicted median estimate in the crackdown and no crackdown frames, conditioned by the issue area and funding source frames, with 90% credible intervals around each point estimate. Figures SUPP and SUPP in the supplement show the distributions of the differences in median predicted estimates and provide probabilities that these differences are greater (or less) than zero. Because differences can be either positive or negative (i.e. in some frames, the crackdown condition causes greater donations; in others it causes fewer donations), we report the probability that the difference is not equal to zero—when the median value is negative, we report the proportion of predicted values that are negative, and when the median value is positive, we report the proportion of values that are positive.

\stgroup
\renewcommand*{\arraystretch}{1.75}
!INCLUDE "../output/tables/tbl-avg-results.md"
\fingroup

## Likelihood of donation

When only looking at the difference between the crackdown and the no crackdown conditions, we find that respondents are not significantly more likely to donate to legally besieged international NGOs. As seen in @fig:likelihood-medians(A), those exposed to the crackdown condition tend to have a slightly higher probability of donating (46%) than those in the control condition (42.6%), but the difference in these medians is not significant ($p(\Delta \neq 0) = 0.79$).[^delta-explanation] We thus do not initially find evidence to support our hypothesis that crackdowns increase the likelihood of donating.

![Median likelihood of donation in control and crackdown groups, conditioned by other experimental frames](../output/figures/likelihood-medians.pdf){#fig:likelihood-medians}

We find more nuanced results when conditioning likelihood to donate on other experimental frames. @fig:likelihood-medians(B) shows the median likelihood to donate across crackdown conditions and NGO issue area frames. Individuals have the same median propensity to donate to human rights NGOs (42–43%) regardless of whether the NGOs face legal difficulties abroad. However, individual donors are slightly more likely to donate to humanitarian assistance NGOs facing crackdown (48%) than those without legal challenges (43.6%), though again, the difference in medians is not significant ($p(\Delta \neq 0) = 0.86$). We again find little support for our hypothesis that donors are more likely to donate to humanitarian assistance NGOs over human rights NGOs. In general, donors are equally likely to donate to both, except for a slight increase in likelihood for humanitarian NGOs facing legal challenges.

While the crackdown frame had no effect on the probability of donating to human rights NGOs alone, conditioning this finding on the source of NGO funding uncovers competing trends. As seen in @fig:likelihood-medians(C), which shows the median likelihood of donation across all three experimental conditions, when individual donors know that a human rights organization receives the majority of its funding from the government, they are significantly more likely ($p(\Delta \neq 0) = 0.975$) to donate in the absence of crackdowns (46%) than when the NGO faces legal difficulties (30%). In contrast, when donors know that an organization receives most of its funding from private sources, they are significantly more likely ($p(\Delta \neq 0) = 0.98$) to donate when there *is* a legal crackdown (57%) than when the NGO faces no legal hurdles (40%). 

For humanitarian assistance NGOs, the source of funding appears to have no effect on the likelihood of donation across crackdown conditions. Individual donors have a 40–50% predicted probability of donating to humanitarian organizations regardless of experimental condition, with no significant differences in medians.

These results give partial support to our third hypothesis. The source of funding has little influence on the propensity to donate to humanitarian NGOs, but on average, donors are substantially more likely to give to privately-funded human rights NGOs than government-funded organizations. However, the effect of crackdowns reverses across conditions, as donors appear to both punish government-funded human rights NGOs that face legal difficulties and rally behind privately-funded NGOs facing the same legal difficulties. Many of the respondents described their reasoning for removing support for besieged government-funded organizations, explaining that "[i]f the non-profit works in countries where non-profit activities are heavily restricted there’s a good amount of waste and shortfalls in their activities and ability to assist others,"[^3154467] and that accordingly, they would be less likely to contribute. Others explained that they would decrease their donations to government-backed organizations because of the bad optics of legal crackdown, with one stating outright that "I'm not exactly sure what they did was right or wrong, I think it just seems bad, so I'm less likely to want to donate to them."[^8425616]

While donors on average appear to punish government-funded human rights organizations, they increase their support to privately funded NGOs. Many respondents explained their motivation for being more likely to donate in moralistic, normative terms, reasoning that "[t]hey [IRC] obviously need it more than I do,"[^3510738] or "[s]ince I was small child my parents thought me to help others,"[^6009603] or "I would want to do the right thing."[^9526638] Another explained "[t]hey [IRC] are doing good work in countries where it is tough for groups like them to operate and they need all the help they can get."[^3025921] Private donors thus seem to be more willing to support besieged human rights organizations when they are unencumbered by government funds. 

## Amount donated

While crackdowns do not substantially influence donors' *likelihood* to donate, they do increase the *amount* of money that respondents are willing to contribute (see the top left panel of @fig:amount-medians). Informing participants that IRC faces legal hurdles abroad increased donations by \$4 on average, an increase of 19% from the no crackdown condition ($p(\Delta \neq 0) = 0.96$). This provides good evidence for our first hypothesis—donors appear to give more money to besieged international NGOs. 

![Median amount donated in control and crackdown groups, conditioned by other experimental frames](../output/figures/amount-medians.pdf){#fig:amount-medians}

This trend also holds true when accounting for the issue area of the NGO. As seen in the bottom left panel of @fig:amount-medians, the crackdown condition elicits higher donations for both the human rights and humanitarian assistance conditions, though with varying levels of significant. Emphasizing legal crackdown increased donations to human rights NGOs by \$2.60 above the no crackdown condition, but this difference is not substantially significant ($p(\Delta \neq 0) = 0.8$). In contrast, crackdowns significantly boosted donations to humanitarian assistance NGOs by \$5—a 25% increase—beyond the control condition ($p(\Delta \neq 0) = 0.945$). We find moderate support for our second hypothesis that donors give more to besieged humanitarian NGOs. In general, informing donors about crackdowns causes them to give more to humanitarian NGOs facing legal difficulties abroad.

Finally, the source of NGO funding adds more texture to these results. We previously found that donors seem to (1) punish government-funded human rights NGOs and (2) reward privately-funded human rights NGOs when they run into legal issues. This finding also applies somewhat to the amount donors give. Respondents donated \$8 more to besieged privately-funded human rights NGOs compared to the no crackdown control condition ($p(\Delta \neq 0) = 0.975$), increasing their donations by 42%. Anecdotally, many of the respondents explained that they chose to give additional amounts to privately-funded human rights NGOs precisely because "the country limits non-profits."[^13685] The punishment mechanism found previously does not translate to the amount donated—while there is a slight decrease in median donations to government-funded human rights NGOs facing crackdown, there is no significant difference compared to the control condition ($p(\Delta \neq 0) = 0.74$).

Of all the experimental conditions, donors were the most influenced by legal crackdowns on government-funded humanitarian assistance NGOs. Emphasizing legal difficulties increased donations to these types of organizations by 67%, or more than \$12 ($p(\Delta \neq 0) = 0.99$). The crackdown condition caused this increase despite some notable hesitation from respondents, many of whom felt that government-backed NGOs do not need or deserve private donations. For example, many respondents explained there was no need to make individual donations, since IRC "is already receiving funding from governments, so funding from private individuals doesn't seem as necessary. I'd prefer to give my money to an organization that is primarily run by private donations"[^6486084] or because "[m]y tax paying dollars go to the government and if the government is helping to fund it then they are in turn getting some of my money."[^9509936] This hesitation was not universal, however, and in aggregate most respondents chose to give substantially more. Many echoed this respondent, who identified the crackdown condition as one of the reasons for giving the full hypothetical \$100: "I believe the work of such organizations has an urgency that affects many refugees and their families. If they can function without being affected by the harsh laws against non-profits, I would want them to have as much help as possible to do their humanitarian work."[^1097165] 

In contrast, though, crackdowns had no substantial effect on the amount donated to privately-funded humanitarian NGOs ($p(\Delta \neq 0) = 0.71$). None of the respondents in these conditions mentioned the importance (or non-importance) funding sources when justifying their giving, and many explained that they would not give solely on the basis of the legal crackdown, including one who stated that they "would keep all \$100 because it would not even go to helping humanitarian efforts due to the new laws."[^8995923] It is possible that donors see government-funded humanitarian NGOs as more legitimate and more capable of handling difficult legal restrictions than privately-funded organizations—for instance, donors might assume that an international NGO that receives substantial money from USAID would ostensibly have have the backing and support of the US government when facing legal challenges, while an INGO funded by small donors would be less able to confront such challenges. Further research is needed to probe this trend.




# Discussion and conclusion

While the number of NGOs proliferated across the globe with the end of the Cold War, numerous countries have cracked down on funding for domestic NGOs over the last three decades. Between the lack of a local philanthropic culture and an increasingly authoritarian approach that restricts space for domestic philanthropy, many NGOs are forced to rely on foreign private donors. But how do such donors react towards beseiged NGOs abroad? TODO: REDO THESE FINDINGS TO MAKE MORE PUNCHY We find that legal crackdowns on NGOs have a moderate effect on the probability that a donor gives money, with a significant positive effect in only one condition—donors are more likely to donate to privately funded human rights NGOs that are legally besieged. Though crackdowns do not have a strong effect on the likelihood to donate, we find that already-likely donors tend to give substantially more to legally restricted NGOs, in particular those that work on humanitarian issues generally, privately-funded human rights organizations, and government-funded humanitarian organizations.

Our results have several implications for policy and policy research. First, NGOs may benefit from publicizing government crackdown on such organizations. While this may not be enough to sway the average U.S. citizen, our results show that it can convince regular or already-likely donors to donate more to beseiged groups. Second, our study also highlights the important of framing issue areas. Our results indicate that individual private donors are likely to view HROs with suspicion. However, there exists a lot of diversity across the work undertaken HROs, and communicating the nature of work (service provision, legal aid, education, advocacy, monitoring and documentation) and the main target of the group's efforts, can allay the public's fears. Finally, if CSOs receive a majority of their funding from non-governmental sources and are public about it, they may be able to convince average donors that they are contributing to the NGO's ability to fight against the crackdown. Thus, they may be able to solicit more funding. Futher, since private funders tend to be less known by people in recipient countries compared to major governmental funders, raising funds through them is less likely to attract the ire of authoritarian governments. 

With increasing government repression of NGOs, these groups can no longer rely on a single funding source. However, these new and challenging scenarios create an opportunity for NGOs to rethink how to address different audiences and create a robust market for philanthropy towards beseiged NGOs abroad. 




[^power]: We used power analysis to determine our sample size: with the anticipation of finding a small effect size ($f^2 = 0.02$) at a 0.05 significance level with a power of 0.9, our target sample size was 527, which we then rounded up to 540 in case of error or noncompliance with the survey.
[^anova-regression]: Typically, between-subjects factorial designs are analyzed with ANOVA. Using regression instead of ANOVA allows us to estimate differences in means and medians more easily and provides more flexibility when controlling for demographics or attitudes towards philanthropy. Table SUPP in the appendix demonstrates how to add each of the terms to estimate the average for each condition.

[^priors]: In both families of models, we use weakly informative prior distributions for both the coefficients and the intercepts. In the OLS models, we use a Cauchy distribution with a median of 0 and a λ of 2.5 for coefficients and a median of 0 and a λ of 10 for the intercept. Following the suggestion of @GhoshLiMitra:2017, who recommend that weak prior distributions in logistic regression models use between 3–7 degrees of freedom, we use a Student t distribution with 3 degrees of freedom, a µ of 0, and a σ of 2.5 for coefficients and a σ of 10 for the intercept in our logistic regression models.

    We obtain the posterior distribution of each dependent variable with Markov Chain Monte Carlo (MCMC) sampling and simulate values from the joint posterior distribution of the coefficient parameters. We use Stan [@stan] through R [@rstan; @r-project] to generate 4 MCMC chains with 2,000 iterations in each chain, 1,000 of which are used for warmup. We use the medians of the simulated values from the MCMC samples as coefficient estimates and use the 5% and 95% quantiles as lower and upper limits for 90% credible intervals.

[^delta-explanation]: Throughout this paper, ∆ represents the median difference in the value of interest between the "no crackdown" and "crackdown" conditions in 4000 MCMC simulations (i.e. $\text{Value}_{\text{No crackdown}} - \text{Value}_{\text{Crackdown}}$).

[^3154467]: Response 3154467.

[^8425616]: Response 8425616.

[^3510738]: Response 3510738.

[^6009603]: Response 6009603.

[^9526638]: Response 9526638.

[^13685]: Response 13685.

[^3025921]: Response 3025921.

[^6486084]: Response 6486084.

[^9509936]: Response 9509936.

[^1097165]: Response 1097165.

[^8995923]: Response 8995923.

[^coefs]: Detailed regression coefficients are included in Tables SUPP and SUPP in the appendix.
