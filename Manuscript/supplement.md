---
title: "Supplement to Charity During Crackdown: Analyzing the Impact of State Repression of NGOs on Philanthropy"
author:
- name: Suparna Chaudhry
  affiliation: Christopher Newport University
  email: suparna.chaudhry@cnu.edu
- name: Andrew Heiss
  affiliation: Brigham Young University
  email: andrew_heiss@byu.edu
date: July 15, 2018
published: 
git-repo: https://github.com/andrewheiss/ngo-crackdowns-philanthropy
reference-section-title: References
toc: true
---

# Sample

## Recruitment

Experiment participants were recruited via Amazon Mechanical Turk (MTurk), an online crowdsourcing platform that has been extensively used in social science research in recent years. MTurk allows researchers to recruit participants to perform tasks such as filling out surveys and opinion polls, participating in experiments, or coding the content of documents. Researchers advertise their studies as a human intelligence task (HIT) on MTurk, and participants choose only those HITs that interest them, given the promised price and estimated duration of the task. We listed a link to our survey on MTurk on March 22–23, 2018, and offered participants \$0.75 for successfully completing the study. We estimated that the survey would take 5 minutes to complete and paid participants the equivalent of a \$9/hour wage. On average, participants completed the survey in 3 minutes and 20 seconds (see @fig:avg-time).

![Time spent on experiment](output/figures/avg-time.pdf){#fig:avg-time}

## Sample size

We used power analysis to determine our sample size: with the anticipation of finding a small effect size ($f^2 = 0.02$) at a 0.05 significance level with a power of 0.9, our target sample size was 527, which we then rounded up to 540 in case of error or noncompliance with the survey.

## Demographics and representativeness

MTurk has become an increasingly popular method for fielding survey experiments on cheap semi-representative national samples, though drawing definitive causal inference from convenience samples is not without issues. Previous research has found that MTurk workers tend to be more liberal, younger, and less racially diverse than the general US population [@CliffordJewellWaggoner:2015; @BerniskyHuberLenz:2012]. The results from our experiment generally mirror these findings. @tbl:exp-sample compares demographic characteristics of our sample with national averages from the US Census's Current Population Survey (CPS) [@IPUMS-CPS:2017]. For general demographic information, we use the 2017 Annual Social and Economic Supplement (ASEC) to the CPS. From 2002–2015, the CPS included a Volunteer Supplement every September, so we use 2015 data for data on volunteering and donating to charity. We do not show other respondent demographic details because we do not have good population-level data to compare our sample with. We could theoretically use Pew data to compare political preferences, but Pew collects data on party affiliation, while we collected data about respondents' ideological positions along a conservative–liberal spectrum, which makes the two variables incomparable.

!INCLUDE "output/tables/tbl-exp-sample.md"

\newpage

As seen in @tbl:exp-sample, our sample is younger, wealthier, and more educated than national averages. This is to be expected, given previous findings about the characteristics of MTurk workers and given that our target population is the portion of Americans willing to give money to charities online, which implies access to technology and disposable income. Our sample self-reports high levels of charitable giving: 82% said they donate at least once a year, while only 49% donate to charity in the previous year nationally. There are several possible explanations for this discrepancy. First, there are differences in the wording of our question and CPS's question—we ask how often respondents typically donate, while CPS asks if respondents have donated (or not) in the past 12 months. Second, respondents were primed and knew that the survey was related to NGOs, and thus might be displaying social desirability bias. Finally, some charitably-oriented respondents may have self-selected into the survey, given that the title listed on MTurk mentioned international nonprofit organizations. We are not overly concerned with these discrepancies, since we aimed our study at those who would be more inclined to donate online.

@tbl:descriptive-stats provides summary statistics for all the variables we collected in our survey.

\stgroup

\renewcommand*{\arraystretch}{1.75}

!INCLUDE "output/tables/tbl-descriptive-stats.md"

\fingroup


# Experiment

## Preregistration

Prior to launching the survey, we preregistered our hypotheses and research design at the Open Science Framework, and our preregistration protocol is available at [https://osf.io/dx973/](https://osf.io/dx973/). We made one deviation from the original preregistration. In the text of our preregistration, we only specifed the non-interacted versions of our hypotheses:

1. Donors will give more/be more likely to give to NGOs that face legal crackdowns abroad
2. Donors will give more/be more likely to give to NGOs working on humanitarian issues
3. Donors will give more/be more likely to give to NGOs that do not receive substantial funding from government sources

In our preregistered data analysis plan, however, we explain that we will test the interacted versions of the hypotheses (i.e. donors will give more to humanitarian NGOs facing legal crackdowns, etc.). This was an oversight—we inadvertently used overly simple (and incorrect) hypotheses, but correctly described the full analysis plan (using the correct, unstated, interacted hypotheses). We followed our preregistered analysis plan as expected and rephrased our hypotheses in the paper manuscript.

## Treatment assignments and CONSORT diagram

To help ensure the quality of the responses we received and filter out workers who try to get through the HIT as quickly as possible without reading the questions [@BerinskyMargolisSances:2014], we included two attention check questions in the experiment. The first check was the second question in the survey (Q1.3) and involved reading several sentences and following instructions to select specific responses. We designed this question to filter out shirking respondents. We included a second, simpler check later in the survey, to ensure that participants were still engaged (Q3.8). Only two participants did not pass this check.

@fig:consort uses a CONSORT diagram to show the assignment of participants to the eight different experimental conditions. We excluded participants that (1) did not participate in the experiment through MTurk and (2) failed the first attention check (Q1.3). We include in our analysis participants that failed the second attention check.

\blandscape

![CONSORT diagram for experiment](output/figures/consort.pdf){#fig:consort}

\elandscape


# Analysis procedures


## Combining coefficients to calculate group values

We test the effect of the three frames on these two outcomes by measuring the differences in the median amount donated and the median likelihood to donate across the crackdown vs. no crackdown condition. We do this by fitting three regression models with indicator variables and interaction terms for each of the conditions. Typically, between-subjects factorial designs are analyzed with ANOVA. Using regression instead of ANOVA allows us to estimate differences in means and medians more easily and provides more flexibility when controlling for demographics or attitudes towards philanthropy. @tbl:coefficients-to-add demonstrates how to add each of the terms to estimate the average for each condition.

In model specification 1, we test only for the effect of legal crackdowns on the outcome measures; in specification 2, we test for the effect of legal crackdowns on outcomes, conditioned on the issue area the NGO focuses on; and in specification 3, we test for the effect of crackdowns conditioned on both the issue area and the source of NGO funding, yielding these simplified models:

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

\blandscape
!INCLUDE "output/tables/tbl-coefficients-to-add.md"
\elandscape

## Priors

We use Bayesian OLS regression for models measuring the amount donated, and we use Bayesian logistic regression for models measuring the likelihood of donation. In both families of models, we use weakly informative prior distributions for both the coefficients and the intercepts. In the OLS models, we use a Cauchy distribution with a median of 0 and a λ of 2.5 for coefficients and a median of 0 and a λ of 10 for the intercept. Following the suggestion of @GhoshLiMitra:2017, who recommend that weak prior distributions in logistic regression models use between 3–7 degrees of freedom, we use a Student t distribution with 3 degrees of freedom, a µ of 0, and a σ of 2.5 for coefficients and a σ of 10 for the intercept in our logistic regression models.

We obtain the posterior distribution of each dependent variable with Markov Chain Monte Carlo (MCMC) sampling and simulate values from the joint posterior distribution of the coefficient parameters. We use Stan [@stan] through R [@rstan; @r-project] to generate 4 MCMC chains with 2,000 iterations in each chain, 1,000 of which are used for warmup. We use the medians of the simulated values from the MCMC samples as coefficient estimates and calculate the 90% highest posterior density as credible intervals.

\newpage


# Full results

\stgroup
\renewcommand*{\arraystretch}{1.75}
!INCLUDE "../output/tables/tbl-avg-results.md"
\fingroup

## Model coefficients: likelihood of donation

!INCLUDE "output/tables/tbl-models-amount.md"

Table: Results for models predicting proportion of respondents who are likely to donate {#tbl:models-likelihood}

\newpage

![Differences in donation likelihood in control and crackdown groups, conditioned by other experimental groups](output/figures/likelihood-diffs.pdf){#fig:likelihood-diffs}

!INCLUDE "output/tables/tbl-likelihood-diffs.md"

\clearpage

## Model coefficients: amount donated

!INCLUDE "output/tables/tbl-models-amount.md"

Table: Results for models predicting amount respondents are willing to donate {#tbl:models-amount}

\clearpage

![Differences in median amount donated in control and crackdown groups, conditioned by other experimental groups](output/figures/amount-diffs.pdf){#fig:amount-diffs}

!INCLUDE "output/tables/tbl-amount-diffs.md"


\newpage

\blandscape

# Additional analyses

To control for the effects of individual attitudes toward philanthropy, political ideology, education, and other post-treatment demographic attributes, we rerun each model with a set of additional independent variables as robustness checks. The coefficient estimates for crackdown, issue, and funding remain stable throughout.

## Full models: likelihood of donation

!INCLUDE "output/tables/tbl-models-likelihood-full.md"

Table: Results for models predicting proportion of respondents who are likely to donate, demographic controls included {#tbl:models-likelihood-full}

\elandscape

![Comparison of posterior distributions of coefficients from Model 3 and Model 3 + demographics](output/figures/likely-coefs-full.pdf){#fig:likely-coefs-full}

\newpage

\blandscape

## Full models: amount donated

!INCLUDE "output/tables/tbl-models-amount-full.md"

Table: Results for models predicting amount respondents are willing to donate, demographic controls included {#tbl:models-amount-full}

\elandscape

![Comparison of posterior distributions of coefficients from Model 3 and Model 3 + demographics](output/figures/amount-coefs-full.pdf){#fig:amount-coefs-full}

\clearpage


# Survey experiment

## Recruitment and payment

Title of Mechanical Turk HIT

:   "Survey on international nonprofit organizations (~ 5 minutes)"

HIT description

:   "We are conducting an academic survey about international nonprofit organizations and want to know your opinion about them. This survey will take roughly five minutes to complete."

Payment

:   Participants were paid $0.75 for successfully completing the experiment, commensurate with a $9/hour wage.

!INCLUDE "../text/experiment.md"

\newpage


# IRB

This project received IRB approval from the human subjects research committees at both Christopher Newport University and Brigham Young University. We include a generic version of our protocol below.

!INCLUDE "../text/irb.md"

\newpage
