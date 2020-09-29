---
title: 'Online appendix for "Dynamics of International Giving: How Heuristics Shape Individual Donor Preferences"'
short-title: 'Online appendix for "Dynamics of International Giving"'
author:
- name: Suparna Chaudhry
  affiliation: "Lewis & Clark College"
  email: schaudhry@lclark.edu
  url: http://www.suparnachaudhry.com/
- name: Andrew Heiss
  affiliation: Georgia State University
  email: aheiss@gsu.edu
  url: https://www.andrewheiss.com/
date: "June 26, 2020"
title-page: false
published: 
git-repo: https://github.com/andrewheiss/ngo-crackdowns-philanthropy
reference-section-title: References
toc: true
appendix: true
---

<!-- supplement.md is generated from supplement.Rmd. Only edit the .Rmd file, *not* the .md file. -->

# Sample

## Recruitment

Experiment participants were recruited via Amazon Mechanical Turk (MTurk), an online crowdsourcing platform that has been extensively used in social science research in recent years. MTurk allows researchers to recruit participants to perform tasks such as filling out surveys and opinion polls, participating in experiments, or coding the content of documents. Researchers advertise their studies as a human intelligence task (HIT) on MTurk, and participants choose only those HITs that interest them, given the promised price and estimated duration of the task. We listed a link to our survey on MTurk on March 22–23, 2018, and offered participants \$0.75 for successfully completing the study. We estimated that the survey would take 5 minutes to complete and paid participants the equivalent of a \$9/hour wage. On average, participants completed the survey in 3 minutes and 20 seconds (see @fig:avg-time). 

![Time spent on experiment](output/figures/avg-time.pdf){#fig:avg-time}

## Sample size

We used power analysis to determine our sample size: with the anticipation of finding a small effect size ($f^2 = 0.02$) at a 0.05 significance level with a power of 0.9, our target sample size was 527, which we then rounded up to 540 in case of error or noncompliance with the survey.

## Demographics and representativeness

Amazon's Mechanical Turk (MTurk) has become an increasingly popular method for fielding survey experiments on semi-representative national samples in an inexpensive manner, though drawing definitive causal inference from convenience samples is not without issues. Previous research has found that MTurk workers tend to be more liberal, younger, and less racially diverse than the general US population [@CliffordJewellWaggoner:2015; @BerniskyHuberLenz:2012]. The results from our experiment generally mirror these findings, as seen in @tbl:exp-sample, which compares demographic characteristics of our sample with national averages from the US Census's Current Population Survey (CPS) [@IPUMS-CPS:2017]. For general demographic information, we use the 2017 Annual Social and Economic Supplement (ASEC) to the CPS. From 2002–2015, the CPS included a Volunteer Supplement every September, so we use 2015 data for data on volunteering and donating to charity. We do not show other respondent demographic details because we do not have good population-level data to compare our sample with. We could theoretically use Pew data to compare political preferences, but Pew collects data on party affiliation, while we collected data about respondents' ideological positions along a conservative–liberal spectrum, which makes the two variables incomparable.



------------------------------------------------------------------------------------------------------------------------------------------
Variable                                                                               Sample   National   ∆~median~        95% HPDI      
------------------------------------------------------------------------------------- -------- ---------- ----------- --------------------
Female (%)^a^                                                                          54.8%     51.0%       3.8%         (-0.4%, 8%)     

Age (% 35+)^a^                                                                         47.3%     53.9%       -6.6%     (-10.8%, -2.4%)^†^ 

Income (% $50,000+)^a^                                                                 50.4%     27.4%       21.7%     (17.4%, 25.8%)^†^  

Education (% BA+)^a^                                                                   46.1%     29.9%       16.3%     (11.9%, 20.2%)^†^  

Donated in past year (%)^b^                                                            82.5%     48.8%       33.6%     (30.2%, 36.7%)^†^  

Volunteered in past year (%)^b^                                                        54.2%     75.1%      -20.9%     (-25%, -16.6%)^†^  

*^a^Annual CPS, March 2017*                                                                                                               

*^b^Monthly CPS, September 2015*                                                                                                          

*^†^National value is outside the sample highest posterior density interval (HPDI)*                                                       
------------------------------------------------------------------------------------------------------------------------------------------

Table: Characteristics of experimental sample {#tbl:exp-sample}


As seen in @tbl:exp-sample, our sample is younger, wealthier, and more educated than national averages. This is to be expected, given previous findings about the characteristics of MTurk workers and given that our target population is the portion of Americans willing to give money to charities online, which implies access to technology and disposable income. Our sample self-reports high levels of charitable giving: 82% said they donate at least once a year, while only 49% donate to charity in the previous year nationally. There are several possible explanations for this discrepancy. First, there are differences in the wording of our question and CPS's question—we ask how often respondents typically donate, while CPS asks if respondents have donated (or not) in the past 12 months. Second, respondents were primed and knew that the survey was related to NGOs, and thus might be displaying social desirability bias. Finally, some charitably-oriented respondents may have self-selected into the survey, given that the title listed on MTurk mentioned international nonprofit organizations. 

We are not overly concerned with these discrepancies, since we aimed our study at those who would be more inclined to donate online. Moreover, in an impressive study to test the validity of experiments conducted on non-representative, internet-based samples, @MullinixLeeperDruckman:2015 ran 20 identical experiments on both MTurk and on a nationally representative population sample. The results from both types of surveys tracked closely with each other and MTurk-based surveys were able to replicate most of the treatment effects found in national samples. Accordingly, they concluded that internet-based population samples are "useful testing grounds for experimental social science" and that they can still lead to substantial progress in generating knowledge and making inferential claims [@MullinixLeeperDruckman:2015, 124]. MTurk-based studies ultimately do not replace the need for more robust nationally representative samples, which still provide the most robust and accurate evidence for causal claims, but they are a cost-effective method for estimating potential population-level effects. Other research corroborates these conclusions—while MTurk samples are not perfectly representative, they are still helpful approximations of representativeness [@BerniskyHuberLenz:2012; @KrupnikovLevine:2014; @CliffordJewellWaggoner:2015; @CoppockLeeperMullinix:2018].

@tbl:descriptive-stats provides summary statistics for all the variables we collected in our survey.

\stgroup

\renewcommand*{\arraystretch}{1.75}



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Variable                                                                                                           Details                                                                           
------------------------------------------------------- ---------------------------------------------------------- ----------------------------------------------------------------------------------
Likelihood of donation                                  ![](output/figures/summary-table/donate_likely)            Extremely unlikely (46; 8.7%) | Somewhat unlikely (110; 20.7%) | Neither likely   
                                                                                                                   nor unlikely (138; 26.0%) | Somewhat likely (192; 36.2%) | Extremely likely (45;  
                                                                                                                   8.5%)                                                                             

Likelihood of donation (binary)                         ![](output/figures/summary-table/donate_likely_bin)        Not likely (294; 55.4%) | Likely (237; 44.6%)                                     

Amount hypothetically donated ($)                       ![](output/figures/summary-table/amount_donate)            Median: 10 | Mean: 22.4 | Std. Dev.: 25.67                                        

Gender                                                  ![](output/figures/summary-table/gender)                   Female (291; 54.8%) | Male (237; 44.6%) | Other (1; 0.2%) | Prefer not to say     
                                                                                                                   (2; 0.4%)                                                                         

Age                                                     ![](output/figures/summary-table/age)                      Under 18 (1; 0.2%) | 18 – 24 (43; 8.1%) | 25 – 34 (207; 39.0%) | 35 – 44 (129;    
                                                                                                                   24.3%) | 45 – 54 (90; 16.9%) | 55 – 64 (44; 8.3%) | 65 – 74 (16; 3.0%) | 75 – 84  
                                                                                                                   (1; 0.2%)                                                                         

Income                                                  ![](output/figures/summary-table/income)                   Less than $10,000 (32; 6.0%) | $10,000 – $19,999 (43; 8.1%) | $20,000 – $29,999   
                                                                                                                   (50; 9.4%) | $30,000 – $39,999 (78; 14.7%) | $40,000 – $49,999 (58; 10.9%) |      
                                                                                                                   $50,000 – $59,999 (55; 10.4%) | $60,000 – $69,999 (43; 8.1%) | $70,000 – $79,999  
                                                                                                                   (38; 7.2%) | $80,000 – $89,999 (25; 4.7%) | $90,000 – $99,999 (30; 5.6%) |        
                                                                                                                   $100,000 – $149,999 (45; 8.5%) | More than $150,000 (21; 4.0%) | Prefer not to    
                                                                                                                   say (13; 2.4%)                                                                    

Education                                               ![](output/figures/summary-table/education)                Less than high school (2; 0.4%) | High school graduate (47; 8.9%) | Some college  
                                                                                                                   (128; 24.1%) | 2 year degree (68; 12.8%) | 4 year degree (212; 39.9%) | Graduate  
                                                                                                                   or professional degree (66; 12.4%) | Doctorate (8; 1.5%)                          

Frequency of attending religious services               ![](output/figures/summary-table/religiosity)              More than once a week (19; 3.6%) | Once a week (74; 13.9%) | Once or twice a      
                                                                                                                   month (50; 9.4%) | A few times a year (71; 13.4%) | Seldom (98; 18.5%) | Never    
                                                                                                                   (215; 40.5%) | Don't know (4; 0.8%)                                               

Political views                                         ![](output/figures/summary-table/ideology)                 Strong liberal (76; 14.3%) | Liberal (150; 28.2%) | Independent, leaning liberal  
                                                                                                                   (82; 15.4%) | Independent (80; 15.1%) | Independent, leaning conservative (60;    
                                                                                                                   11.3%) | Conservative (61; 11.5%) | Very conservative (22; 4.1%)                  

Frequency of following public affairs                   ![](output/figures/summary-table/political_knowledge)      Most of the time (217; 40.9%) | Some of the time (213; 40.1%) | Only now and      
                                                                                                                   then (84; 15.8%) | Hardly at all (17; 3.2%)                                       

Frequency of charitable donations                       ![](output/figures/summary-table/give_charity)             Once a week (37; 7.0%) | Once a month (105; 19.8%) | Once every three months      
                                                                                                                   (105; 19.8%) | Once every six months (102; 19.2%) | Once a year (89; 16.8%) |     
                                                                                                                   Once every few years (56; 10.5%) | Never (37; 7.0%)                               

Volunteered in past 12 months                           ![](output/figures/summary-table/volunteer)                No (288; 54.24%) | Yes (243; 45.76%)                                              

Prior favorability towards humanitarian NGOs            ![](output/figures/summary-table/favor_humanitarian)       Very unfavorable (2; 0.4%) | Unfavorable (6; 1.1%) | Neutral (39; 7.3%) |         
                                                                                                                   Favorable (235; 44.3%) | Very favorable (249; 46.9%)                              

Prior favorability towards humanitarian NGOs (binary)   ![](output/figures/summary-table/favor_humanitarian_bin)   Not favorable (47; 8.9%) | Favorable (484; 91.1%)                                 

Prior favorability towards human rights NGOs            ![](output/figures/summary-table/favor_human_rights)       Very unfavorable (5; 0.9%) | Unfavorable (12; 2.3%) | Neutral (61; 11.5%) |       
                                                                                                                   Favorable (226; 42.6%) | Very favorable (227; 42.7%)                              

Prior favorability towards human rights NGOs (binary)   ![](output/figures/summary-table/favor_human_rights_bin)   Not favorable (78; 14.7%) | Favorable (453; 85.3%)                                

Prior favorability towards development NGOs             ![](output/figures/summary-table/favor_development)        Very unfavorable (5; 0.9%) | Unfavorable (8; 1.5%) | Neutral (45; 8.5%) |         
                                                                                                                   Favorable (235; 44.3%) | Very favorable (238; 44.8%)                              

Prior favorability towards development NGOs (binary)    ![](output/figures/summary-table/favor_development_bin)    Not favorable (58; 10.9%) | Favorable (473; 89.1%)                                

Attention check 2                                       ![](output/figures/summary-table/check2)                   Correct (531; 100%)                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Table: Descriptive statistics {#tbl:descriptive-stats}


\fingroup


# Collapsing likelihood variable

To simplify our analysis, we collapse our likelihood scale from a 1-5 Likert scale to a binary variable:



------------------------------------------------
Original answer               Collapsed answer  
----------------------------- ------------------
Extremely likely              Likely            

Somewhat likely               Likely            

Neither likely nor unlikely   Unlikely          

Somewhat unlikely             Unlikely          

Extremely unlikely            Unlikely          
------------------------------------------------


To check that the results are internally consistent when collapsed, we ran an ordered probit model 
(using Stan) to see if the cutpoints follow the distribution of answers, and they do. "Somewhat likely" and above has a cutpoint of > 0.18, meaning that the likelihood is positive on average for both "Somewhat likely" and "Extremely likely."


--------------------------------------------------------------------
                                                            (1)     
-------------------------------------------------------- -----------
 Crackdown                                                 0.086    
                                                                    
                                                          (0.090)   
                                                                    
 Cutpoint: Extremely unlikely|Somewhat unlikely            -1.317   
                                                                    
                                                          (0.089)   
                                                                    
 Cutpoint: Somewhat unlikely|Neither likely nor unlikely   -0.497   
                                                                    
                                                          (0.071)   
                                                                    
 Cutpoint: Neither likely nor unlikely|Somewhat likely     0.179    
                                                                    
                                                          (0.069)   
                                                                    
 Cutpoint: Somewhat likely|Extremely likely                1.415    
                                                                    
                                                          (0.089)   
                                                                    
 Observations                                               531     
                                                                    
 Posterior sample size                                    8000.000  
--------------------------------------------------------------------

Table: Ordered probit regression with donation likelihood as outcome variable {#tbl:probit-likelihood}


# Experiment

## Preregistration

Prior to launching the survey, we preregistered our hypotheses and research design at the Open Science Framework, and our preregistration protocol is available at [https://osf.io/dx973/](https://osf.io/dx973/). We made two minor deviations from the original preregistration. First, in the *text* of our preregistration, we inadvertently only specified the non-nested versions of our hypotheses:

1. Donors will give more/be more likely to give to NGOs that face legal crackdowns abroad
2. Donors will give more/be more likely to give to NGOs working on humanitarian issues
3. Donors will give more/be more likely to give to NGOs that do not receive substantial funding from government sources

In our preregistered data analysis *plan*, however, we describe the nested and interacted versions of the hypotheses (i.e. donors will give more to humanitarian NGOs facing legal crackdowns, etc.). This was an oversight—we inadvertently used overly simple (and incorrect) textual hypotheses, but correctly described the full analysis plan (using the correct, unstated, unstated hypotheses). 

Second, in our preregistration plan, we declared that we would analyze our data with a series of three Bayesian linear regression models with increasing numbers of interaction terms. To find the effect of crackdown within issue area, for instance, we used a $\text{crackdown} × \text{issue}$ term, and to find the effect of crackdown conditioned on issue and funding we used a three-way $\text{crackdown} \times \text{issue} \times \text{funding}$ term. We then planned on reassembling the different coefficient and intercept terms to approximate the mean values in each combination of conditions. To simplify our analyses in this version of the paper, we estimated group means directly with Stan [@stan; @rstan; @r-project]. This approach provides the same results as the regression models with 2- and 3-way interaction terms, but is far simpler to interpret.

## Treatment assignment balance and CONSORT diagram

To help ensure the quality of the responses we received and filter out workers who try to get through the HIT as quickly as possible without reading the questions [@BerinskyMargolisSances:2014], we included two attention check questions in the experiment. The first check was the second question in the survey (Q1.3) and involved reading several sentences and following instructions to select specific responses. We designed this question to filter out shirking respondents. We included a second, simpler check later in the survey, to ensure that participants were still engaged (Q3.8). Only two participants did not pass this check. 

@fig:consort and @tbl:experimental-conditions show the assignment of participants to the eight different experimental conditions. We excluded participants that (1) did not participate in the experiment through MTurk and (2) failed either attention check.



-----------------------------------------------------------
Crackdown      Issue                     Funding      n    
-------------- ------------------------- ------------ -----
No crackdown   Human rights              Government   68   

No crackdown   Human rights              Private      64   

No crackdown   Humanitarian assistance   Government   68   

No crackdown   Humanitarian assistance   Private      65   

Crackdown      Human rights              Government   65   

Crackdown      Human rights              Private      65   

Crackdown      Humanitarian assistance   Government   68   

Crackdown      Humanitarian assistance   Private      68   

Total          -                         -            531  
-----------------------------------------------------------

Table: Balance of experimental conditions {#tbl:experimental-conditions}


\blandscape

![CONSORT diagram for experiment](output/figures/consort.pdf){#fig:consort}

\elandscape

\newpage


# Priors and models

We use two statistical models for measuring the effect of the crackdown condition on the likelihood of donating and the amount hypothetically donated. Because we measure likelihood of donation with a binary "Likely to donate" vs. "Not likely to donate" variable, we model the proportion of people responding that they would be likely to donate with a binomial distribution. We use a prior distribution of $\text{Beta}(5, 5)$ for $\theta$ to center the probability of responding positively at 50%. In more formal terms, we model this distribution as follows:

$$
\begin{aligned}
n_{\text{group 1, group 2}} &\sim \text{Binomial}(n_{\text{total in group}}, \theta_{\text{group}}) &\text{[likelihood]}\\
\text{Difference} &= n_{\text{group 2}} - n_{\text{group 1}} &\text{[difference in proportions]} \\
n &: \text{Number likely to donate} \\
\\
\theta_{\text{group 1, group 2}} &\sim \text{Beta}(5, 5) &\text{[prior prob. of being likely to donate]}
\end{aligned}
$$

![Prior $\theta$ for binomial models](output/figures/prior-likely.pdf){#fig:prior-likely}

We estimate the mean amount donated in each condition (crackdown vs. no crackdown, humanitarian assistance vs. human rights issues, private vs. government funding) using a *t* distribution. Following @Kruschke:2013, we use an exponential distribution with a rate of 1/29 for the $\nu$ parameter; a normal distribution with the group mean and standard deviation of 10 to capture wider variability in how much respondents might donate for the $\mu$ parameter; and a $\text{Cauchy}(0, 1)$ distribution for the $\sigma$ parameter. In more formal terms, we use the following model and priors:

$$
\begin{aligned}
x_{\text{group 1, group 2}} &\sim \text{Student } t(\nu, \mu, \sigma) &\text{[likelihood]}\\
\text{Difference} &= x_{\text{group 2}} - x_{\text{group 1}} &\text{[difference in means]} \\
x &: \text{Mean amount donated} \\
\\
\nu &\sim \text{Exponential}(1 / 29) &\text{[prior normality]} \\
\mu_{\text{group 1, group 2}} &\sim \mathcal{N}(\bar{x}_{\text{group 1, group 2}}, 10) &\text{[prior donation mean per group]}\\
\sigma_{\text{group 1, group 2}} &\sim \text{Cauchy}(0, 1)&\text{[prior donation sd per group]}
\end{aligned}
$$

![Prior $\nu$, $\mu$, and $\sigma$ for amount models](output/figures/prior-amount.pdf){#fig:prior-amount}

We obtain the posterior distribution of each dependent variable with Markov Chain Monte Carlo (MCMC) sampling and simulate values from the joint posterior distribution of the coefficient parameters. We use Stan [@stan; @rstan; @r-project] to generate 4 MCMC chains with 4,000 iterations in each chain, 2,000 of which are used for warmup. We use the median values from the posterior distributions as point estimates and calculate credible intervals using the 95% highest posterior density.

\newpage

# Survey experiment

## Recruitment and payment

Title of Mechanical Turk HIT

:   "Survey on international nonprofit organizations (~ 5 minutes)"

HIT description

:   "We are conducting an academic survey about international nonprofit organizations and want to know your opinion about them. This survey will take roughly five minutes to complete."

Payment

:   Participants were paid \$0.75 for successfully completing the experiment, commensurate with a \$9/hour wage.


## Consent 

***Q1.1***: You have been invited to participate in an academic research survey about international nongovernmental organizations. This study is being conducted by Author 1 from Institution 1 and Author 2 from Institution 2. The experiment should take about **5 minutes** to complete. You will be paid **$0.75** for your participation.
 
Your participation in this study is entirely voluntary and you are free to skip any question or withdraw from the experiment at any time. You will not be asked to provide any personal information, and your answers will remain anonymous. There are no reasonably foreseeable risks or discomforts associated with participating in this study. There will be questions designed to check that you’re paying attention to the details of the experiment. If you answer these incorrectly, the survey will end early and you may not receive compensation.

Beyond your payment, you will receive no direct benefits from participating in this research study, but your responses may reveal important and useful insights about international NGOs and philanthropy.
 
If you have any questions at any time about the study or the procedures, you can contact Author 1 (author_1@example.com; Department 1, Institution 1, Address 1) or Author 2 (author_2@example.com; Department 2, Institution 2, Address 2) at author_2@example.com. This research has been reviewed by the Institutional Review Board at Institution 1 (IRB phone 1; IRB e-mail 1) and the IRB administrator at Institution 2 (IRB phone 2; IRB e-mail 2).
 
By clicking "I agree" below you are indicating that you are at least 18 years old, have read and understood this consent form and agree to participate in this research study. Please print a copy of this page for your records.

*Q1.2*: I have read the above information, and I consent to take part in the study.

:   Single answer

    - Yes
    - No

---

*Q1.3*: Please read the paragraph below carefully. 

What is your favorite color? While we are interested in learning about your preferences on a variety of topics, including colors, we also want to make sure that you are reading the questions we have written. To demonstrate that you’ve read this much, just go ahead and select both green and yellow from among the alternatives listed below, no matter what your favorite color is. Yes, ignore the first sentence and select both green and yellow.

**(End survey without payment if this question is incorrect.)**

: Multiple answers allowed (*must be green and yellow*)

    - Pink
    - Red
    - Green
    - White
    - Yellow
    - Blue

---

## Crackdown and private giving

*Q2.1*: How do you feel about the following types of organizations?

:   Matrix table

    |                                                                          | Very unfavorable | Unfavorable | Neutral | Favorable | Very favorable |
    |--------------------------------------------------------------------------|:----------------:|:-----------:|:-------:|:---------:|:--------------:|
    | Nonprofit organizations that provide humanitarian relief                 |         ⊚        |      ⊚      |    ⊚    |     ⊚     |        ⊚       |
    | Nonprofit organizations that advocate for human rights                   |         ⊚        |      ⊚      |    ⊚    |     ⊚     |        ⊚       |
    | Nonprofit organizations that help with development and alleviate poverty |         ⊚        |      ⊚      |    ⊚    |     ⊚     |        ⊚       |

---

![](img/irc_logo.png "IRC logo"){.img-responsive .center}

\

*Q2.2*: The **International Rescue Committee** (IRC) focuses on {ISSUE AREA: humanitarian assistance for refugees | human rights for refugees} {MAIN MANIPULATION: and works in countries that have recently passed laws that harshly restrict nonprofit organizations}.
 
A substantial proportion of IRC’s funding comes from {FUNDING SOURCE: government | private donors}.

*Q2.3*: How likely would you be to donate to IRC?

:   Single answer

    - Extremely likely
    - Somewhat likely
    - Neither likely nor unlikely
    - Somewhat unlikely
    - Extremely unlikely

*Q2.4*: If you had an extra $100, how much would you be willing to donate to IRC right now? (*Total must add to 100*)

:   Numeric slider, options must sum to 100

    - Donate to IRC (0–100)
    - Keep for yourself (0–100)
                    
*Q2.5*: Why did you select that amount?

:   Text field

---

## Demographics

*Q3.1*: Almost done! This is the last page of the study.

*Q3.2*: How often do you donate to charity (either cash or in-kind)?

:   Single answer

    - Once a week
    - Once a month
    - Once every three months
    - Once every six months
    - Once a year
    - Once every few years
    - Never

*Q3.3*: Have you volunteered in the past 12 months?

:   Single answer

    - Yes
    - No

*Q3.4*: Some people seem to follow what's going on in government and public affairs most of the time, whether there's an election going on or not. Others aren't that interested. Would you say that you follow what's going on in government and public affairs…

:   Single answer

    - Most of the time
    - Some of the time
    - Only now and then
    - Hardly at all

*Q3.5*: How would you describe your political views?

:   Single answer

    - Strong liberal
    - Liberal
    - Independent, leaning liberal
    - Independent
    - Independent, leaning conservative
    - Conservative
    - Very conservative

*Q3.6*: What is the highest degree or level of school you have completed?

:   Single answer

    - Less than high school
    - High school graduate
    - Some college
    - 2 year degree
    - 4 year degree
    - Graduate or professional degree
    - Doctorate

*Q3.7*: Aside from weddings and funerals, how often do you attend religious services?

:   Single answer

    - More than once a week
    - Once a week
    - Once or twice a month
    - A few times a year
    - Seldom
    - Never
    - Don't know

*Q3.8*: Please select blue from the following list:

:   Single answer

    - Red
    - Yellow
    - Blue
    - Green

*Q3.9*: What is your gender?

:   Single answer

    - Female
    - Male
    - Transgender
    - Other:
    - Prefer not to say

*Q3.10*: What is your total household income?

:   Single answer

    - Less than $10,000
    - $10,000 - $19,999
    - $20,000 - $29,999
    - $30,000 - $39,999
    - $40,000 - $49,999
    - $50,000 - $59,999
    - $60,000 - $69,999
    - $70,000 - $79,999
    - $80,000 - $89,999
    - $90,000 - $99,999
    - $100,000 - $149,999
    - More than $150,000

*Q3.11*: How old are you?

:   Single answer

    - Under 18
    - 18 - 24
    - 25 - 34
    - 35 - 44
    - 45 - 54
    - 55 - 64
    - 65 - 74
    - 75 - 84
    - 85 or older
