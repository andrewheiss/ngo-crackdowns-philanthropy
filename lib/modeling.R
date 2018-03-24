# Stan stuff
CHAINS <- 4
ITER <-2000
WARMUP <- 1000
BAYES_SEED <- 1234
options(mc.cores = parallel::detectCores())

# By default, R uses polynomial contrasts for ordered factors in linear models
# options("contrasts") 
# So make ordered factors use treatment contrasts instead
options(contrasts = rep("contr.treatment", 2))
# Or do it on a single variable:
# contrasts(df$x) <- "contr.treatment"


clean_coefs <- tribble(
  ~term, ~term_clean,
  "(Intercept)", "Intercept",
  "crackdownCrackdown", "Crackdown (yes)",
  "issueHumanitarian assistance", "Issue (humanitarian)",
  "fundingPrivate", "Funding (private)",
  "crackdownCrackdown:issueHumanitarian assistance", "Crackdown × Issue",
  "crackdownCrackdown:fundingPrivate", "Crackdown × Funding",
  "issueHumanitarian assistance:fundingPrivate", "Issue × Funding",
  "crackdownCrackdown:issueHumanitarian assistance:fundingPrivate", "Crackdown × Issue × Funding",
  "favor_humanitarian_binFavorable", "Prior favorability towards humanitarian NGOs",
  "favor_human_rights_binFavorable", "Prior favorability towards human rights NGOs",
  "favor_development_binFavorable", "Prior favorability towards development NGOs",
  "give_charity_3Once a month-once a year", "Give to charity once a month–once a year",
  "give_charity_3At least once a month", "Give to charity at least once a month",
  "volunteerYes", "Volunteered in past year",
  "political_knowledge_binOften", "Follow current political evens often",
  "ideology_binLiberal", "Liberal political views",
  "education_binBA and above", "Bachelor's degree or higher",
  "religiosity_binAt least once a month", "Attend religious services at least once a month",
  "income_binAt least $50,000 – $59,999", "Income $50,000 or higher",
  "age_binAt least 35 – 44", "Age 35 or higher"
) %>% 
  mutate(term_clean_fct = fct_inorder(term_clean, ordered = TRUE))

model_stats_ols = c(Observations = "nobs", 
                    R2 = "r.squared", 
                    `Adjusted R2` = "adj.r.squared",
                    `Residual Std. Error` = "sigma",
                    `Residual Std. Error (df)` = "df.residual",
                    "AIC")

model_stats_bayes <- c(Observations = "nobs",
                       `Posterior sample size` = "pss",
                       Sigma = "sigma")

clean_coefs_named <- clean_coefs %>% pull(term) %>% 
  set_names(clean_coefs$term_clean)
