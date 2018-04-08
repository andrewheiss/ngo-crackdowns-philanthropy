# Stan details ------------------------------------------------------------

CHAINS <- 4
ITER <-2000
WARMUP <- 1000
BAYES_SEED <- 1234
options(mc.cores = parallel::detectCores())


# Helper functions for comparing models -----------------------------------

# Calculate the pairwise differences between columns
# Adapted from http://stackoverflow.com/a/28187446/120898
mcmc_pairwise_diffs <- function(chains) {
  pair_names <- outer(colnames(chains), colnames(chains),
                      paste, sep = " − ")
  pairs_to_omit <- which(lower.tri(pair_names, diag = TRUE))
  
  mcmc_diffs <- outer(1:ncol(chains), 1:ncol(chains),
                      function(x, y) chains[,x] - chains[,y]) %>% 
    magrittr::set_colnames(pair_names) %>% 
    select(-pairs_to_omit)
  
  return(mcmc_diffs)
}

# Summarize the differences between MCMC pairs
tidy_diffs <- function(diffs_pairs) {
  diffs_pairs %>% 
    gather(pair, value) %>% 
    group_by(pair) %>% 
    summarise(mean = mean(value),
              median = median(value),
              q2.5 = quantile(value, probs = 0.025),
              q5 = quantile(value, probs = 0.05),
              q25 = quantile(value, probs = 0.25),
              q75 = quantile(value, probs = 0.75),
              q95 = quantile(value, probs = 0.95),
              q97.5 = quantile(value, probs = 0.975),
              p.greater0 = mean(value > 0),
              p.less0 = mean(value < 0),
              p.diff.not0 = ifelse(median > 0, p.greater0, p.less0))
}


# Ordered factor modeling setup -------------------------------------------

# By default, R uses polynomial contrasts for ordered factors in linear models
# options("contrasts") 
# So make ordered factors use treatment contrasts instead
options(contrasts = rep("contr.treatment", 2))
# Or do it on a single variable:
# contrasts(df$x) <- "contr.treatment"


# Coefficient naming ------------------------------------------------------

# Table of coefficients and their clean names
clean_coefs <- tribble(
  ~simple_model, ~term, ~term_clean,
  TRUE, "(Intercept)", "Intercept",
  TRUE, "crackdownCrackdown", "Crackdown (yes)",
  TRUE, "issueHumanitarian assistance", "Issue (humanitarian)",
  TRUE, "fundingPrivate", "Funding (private)",
  TRUE, "crackdownCrackdown:issueHumanitarian assistance", "Crackdown × Issue",
  TRUE, "crackdownCrackdown:fundingPrivate", "Crackdown × Funding",
  TRUE, "issueHumanitarian assistance:fundingPrivate", "Issue × Funding",
  TRUE, "crackdownCrackdown:issueHumanitarian assistance:fundingPrivate", "Crackdown × Issue × Funding",
  FALSE, "favor_humanitarian_binFavorable", "Prior favorability towards humanitarian NGOs",
  # FALSE, "favor_human_rights_binFavorable", "Prior favorability towards human rights NGOs",
  # FALSE, "favor_development_binFavorable", "Prior favorability towards development NGOs",
  FALSE, "give_charity_3Once a month-once a year", "Give to charity once a month–once a year",
  FALSE, "give_charity_3At least once a month", "Give to charity at least once a month",
  FALSE, "volunteerYes", "Volunteered in past year",
  FALSE, "political_knowledge_binOften", "Follow current political evens often",
  FALSE, "ideology_binLiberal", "Liberal political views",
  FALSE, "education_binBA and above", "Bachelor's degree or higher",
  FALSE, "religiosity_binAt least once a month", "Attend religious services at least once a month",
  FALSE, "income_binAt least $50,000 – $59,999", "Income $50,000 or higher",
  FALSE, "age_binAt least 35 – 44", "Age 35 or higher"
) %>% 
  mutate(term_clean_fct = fct_inorder(term_clean, ordered = TRUE))

clean_coefs_named <- clean_coefs %>% pull(term) %>% 
  set_names(clean_coefs$term_clean)


# Huxtable stuff ----------------------------------------------------------

# Specify extra statistics to show in huxtable regression tables
model_stats_ols = c(Observations = "nobs", 
                    R2 = "r.squared", 
                    `Adjusted R2` = "adj.r.squared",
                    `Residual Std. Error` = "sigma",
                    `Residual Std. Error (df)` = "df.residual",
                    "AIC")

model_stats_bayes <- c(Observations = "nobs",
                       `Posterior sample size` = "pss",
                       Sigma = "sigma")

# Print correct huxtable table depending on the type of output.
#
# Technically this isn't completely necessary, since huxtable can output a
# markdown table, which is ostensibly universal for all output types. However,
# markdown tables are inherently limited in how fancy they can be (e.g. they
# don't support column spans), so I instead let the regression table use
# huxtable's fancy formatting for html and PDF and markdown everywhere else.
if (isTRUE(getOption('knitr.in.progress'))) {
  file_format <- rmarkdown::all_output_formats(knitr::current_input())
} else {
  file_format <- ""
}

print_hux <- function(x) {
  if ("html_document" %in% file_format) {
    print_html(x)
  } else if ("pdf_document" %in% file_format) {
    print_latex(x)
  } else if ("word_document" %in% file_format) {
    print_md(x)
  } else {
    print(x)
  }
}
