---
title: "Supplement to Charity During Crackdown: Analyzing the Impact of State Repression of NGOs on Philanthropy"
author:
- name: Suparna Chaudhry
  affiliation: Christopher Newport University
  email: suparna.chaudhry@cnu.edu
- name: Andrew Heiss
  affiliation: Brigham Young University
  email: andrew_heiss@byu.edu
date: June 22, 2018
published: 
git-repo: https://github.com/andrewheiss/ngo-crackdowns-philanthropy
reference-section-title: References
toc: true
---

# Sample details and treatment assignments

Experiment participants were recruited via Amazon Mechanical Turk (MTurk), an online crowdsourcing platform that has been extensively used in social science research in recent years. MTurk allows researchers to recruit participants to perform tasks such as filling out surveys and opinion polls, participating in experiments, or coding the content of documents. Researchers advertise their studies as a human intelligence task (HIT) on MTurk, and participants choose only those HITs that interest them, given the promised price and estimated duration of the task. We listed a link to our survey on MTurk on March 22–23, 2018, and offered participants $0.75 for successfully completing the study.[^2]

MTurk has become an increasingly popular method for fielding survey experiments on cheap semi-representative national samples, though drawing definitive causal inference from convenience samples is not without issues. Previous research has found that MTurk workers tend to be more liberal, younger, and less racially diverse than the general US population [@CliffordJewellWaggoner:2015; @BerniskyHuberLenz:2012]. The results from our experiment mirror these findings, as seen in @tbl:descriptive-stats. 54% of our respondents are female, 63% are between 35–44 years old, 60% earn less than $60,000 a year, 55% have at least a 4-year degree, 41% never attend religious services, and only 26% identify as politically conservative.

To help ensure the quality of the responses we received and filter out workers who try to get through the HIT as quickly as possible without reading the questions [@BerinskyMargolisSances:2014], we included two attention check questions in the experiment. The first check was the second question in the survey and involved reading several sentences and following instructions to select specific responses. We designed this question to filter out shirking respondents, and we omitted participants who failed this question from our data. We included a second, simpler check later in the survey, to ensure that participants were still engaged. Only two participants did not pass this check. We include these in our analysis, but check for an effect of noncompliance in robustness checks.



## Time spent on experiment

![Time spent on experiment](../output/figures/avg-time.pdf){#fig:avg-time}

## Sample demographics

\stgroup

\renewcommand*{\arraystretch}{1.75}

!INCLUDE "../output/tables/tbl-descriptive-stats.md"

\fingroup

## CONSORT diagram

@fig:consort shows the assignment of participants to the eight different experimental conditions. We excluded participants that (1) did not participate in the experiment through MTurk and (2) failed the first attention check (Q1.3).

\blandscape

![CONSORT diagram for experiment](../output/figures/consort.pdf){#fig:consort}

\elandscape


# Experimental design and analysis procedures

## Preregistration

Details about preregistration here.

## Analysis procedures

Details about how to interpret regressions with all the interaction terms here.



We test the effect of the three frames on these two outcomes by measuring the differences in the median amount donated and the median likelihood to donate across the crackdown vs. no crackdown condition. We do this by fitting three regression models with indicator variables and interaction terms for each of the conditions.[^4] We use Bayesian OLS regression for models measuring the amount donated, and we use Bayesian logistic regression for models measuring the likelihood of donation.[^5] In model specification 1, we test only for the effect of legal crackdowns on the outcome measures; in specification 2, we test for the effect of legal crackdowns on outcomes, conditioned on the issue area the NGO focuses on; and in specification 3, we test for the effect of crackdowns conditioned on both the issue area and the source of NGO funding, yielding these simplified models:
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
Finally, to control for the effects of individual attitudes toward philanthropy, political ideology, education, and other demographic attributes, we rerun each model with a set of additional independent variables as robustness checks.



# Full results



\blandscape

# Appendix

## Process for combining indicator and interaction terms

!INCLUDE "../output/tables/tbl-coefficients-to-add.md"
\elandscape

\blandscape

## Model coefficients: likelihood of donation

!INCLUDE "../output/tables/tbl-models-amount.md"

Table: Results for models predicting proportion of respondents who are likely to donate {#tbl:models-likelihood}

\elandscape

\newpage

![Differences in donation likelihood in control and crackdown groups, conditioned by other experimental groups](../../../Research%20collaboration/Survey%20experiment%20-%20Chaudhry%20and%20Heiss/output/figures/likelihood-diffs.pdf){#fig:likelihood-diffs}

!INCLUDE "../output/tables/tbl-likelihood-diffs.md"

\clearpage

\blandscape

## Model coefficients: amount donated

!INCLUDE "../output/tables/tbl-models-amount.md"

Table: Results for models predicting amount respondents are willing to donate {#tbl:models-amount}

\elandscape

\clearpage

![Differences in median amount donated in control and crackdown groups, conditioned by other experimental groups](../../../Research%20collaboration/Survey%20experiment%20-%20Chaudhry%20and%20Heiss/output/figures/amount-diffs.pdf){#fig:amount-diffs}

!INCLUDE "../output/tables/tbl-amount-diffs.md"

\clearpage



# IRB

IRB stuff here




# Survey experiment

## Recruitment and payment

Title of Mechanical Turk HIT

:   "Survey on international nonprofit organizations (~ 5 minutes)"

HIT description

:   "We are conducting an academic survey about international nonprofit organizations and want to know your opinion about them. This survey will take roughly five minutes to complete."

Payment

:   Participants were paid $0.75 for successfully completing the experiment, commensurate with a $9/hour wage.

!INCLUDE "../text/experiment.md"


# Additional analyses

- Manipulation checks
- Effect of post-treatment demographic variables





[^2]: We estimated that the survey would take 5 minutes to complete and paid participants the equivalent of a $9/hour wage. On average, participants completed the survey in 3 minutes and 20 seconds.
[^4]: Typically, between-subjects factorial designs are analyzed with ANOVA. Using regression instead of ANOVA allows us to estimate differences in means and medians more easily and provides more flexibility when controlling for demographics or attitudes towards philanthropy. @tbl:coefficients-to-add in the appendix demonstrates how to add each of the terms to estimate the average for each condition.
[^5]: In both families of models, we use weakly informative prior distributions for both the coefficients and the intercepts. In the OLS models, we use a Cauchy distribution with a median of 0 and a λ of 2.5 for coefficients and a median of 0 and a λ of 10 for the intercept. Following the suggestion of @GhoshLiMitra:2017, who recommend that weak prior distributions in logistic regression models use between 3–7 degrees of freedom, we use a Student t distribution with 3 degrees of freedom, a µ of 0, and a σ of 2.5 for coefficients and a σ of 10 for the intercept in our logistic regression models.

```
We obtain the posterior distribution of each dependent variable with Markov Chain Monte Carlo (MCMC) sampling and simulate values from the joint posterior distribution of the coefficient parameters. We use Stan [@stan] through R [@rstan; @r-project] to generate 4 MCMC chains with 2,000 iterations in each chain, 1,000 of which are used for warmup. We use the medians of the simulated values from the MCMC samples as coefficient estimates and use the 5% and 95% quantiles as lower and upper limits for 90% credible intervals.
```