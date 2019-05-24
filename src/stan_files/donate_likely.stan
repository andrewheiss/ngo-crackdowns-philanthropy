// Model the difference between two proportions
// 
// Adapted from TJ Mahr's phenomenal post at 
// https://www.tjmahr.com/bayesian-fisher-exact-test/
//
// Here, θ = probability/proportion of being likely to donate.
//
// I'm modeling θ as a beta distribution with a = 5 and b = 5 
// (see David Robinson's fantastic answer about what these terms mean):
// https://stats.stackexchange.com/a/47782/3025
// 

// Stuff coming in from R
data {
  int<lower=0> n_total_1;  // Total number in group 1
  int<lower=0> n_total_2;  // Total number in group 2
  
  int<lower=0> n_likely_1;  // Number of answers responding "likely" in group 1
  int<lower=0> n_likely_2;  // Number of answers responding "likely" in group 2
}

// Stuff to estimate
parameters {
  real<lower=0, upper=1> theta_1;  // Estimated proportion in group 1
  real<lower=0, upper=1> theta_2;  // Estimated proportion in group 2
}

// Models and distributions
model {
  // Priors
  // curve(expr = dbeta(x, shape1 = 5, shape2 = 5), from = 0, to = 1)
  theta_1 ~ beta(5, 5);
  theta_2 ~ beta(5, 5);
  
  // Likelihood
  n_likely_1 ~ binomial(n_total_1, theta_1);
  n_likely_2 ~ binomial(n_total_2, theta_2);
}

// Stuff to calculate with Stan
generated quantities {
  // Difference in group proportions
  real theta_diff;
  
  // Percent change
  real pct_change;
  
  theta_diff = theta_2 - theta_1;
  
  pct_change = theta_diff / theta_1;
}
