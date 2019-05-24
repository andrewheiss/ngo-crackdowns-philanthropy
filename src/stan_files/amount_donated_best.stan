// Stan implementation of John Kruschke's Bayesian Estimation Supersedes the 
// t-test (BEST), in John K. Kruschke, "Bayesian Estimation Supersedes the t 
// test," *Journal of Experimental Psychology* 142, no. 2 (May 2013): 573–603, 
// doi:10.1037/a0029146.

// Adapted from code by Michael Clark
// https://github.com/m-clark/Miscellaneous-R-Code/blob/master/ModelFitting/Bayesian/rstant_testBEST.R

// Stuff coming in from R
data {
  int<lower=1> n;  // Sample size
  int<lower=2> n_group;  // Number of groups
  vector[n] amount;  // Outcome variable
  int<lower=1, upper=n_group> group[n];  // Group variable
}

// Stuff to transform in Stan
transformed data {
  real mean_amount;
  
  mean_amount = mean(amount); 
}

// Stuff to estimate
parameters {
  vector<lower=0, upper=100>[2] mu;  // Estimated group means 
  vector<lower=0>[2] sigma;  // Estimated group sd
  real<lower=0, upper=100> nu;  // df for t distribution
}

// Models and distributions
model {
  // Priors
  // curve(expr = dnorm(mean_y, 10), from = -5, to = 5)
  mu ~ normal(mean_amount, 10);
  
  // curve(expr = dcauchy(x, location = 0, scale = 1), from = 0, to = 40)
  sigma ~ cauchy(0, 1);
  
  // Kruschke uses a nu of exponential(1/29)
  // curve(expr = dexp(x, 1/29), from = 0, to = 200)
  nu ~ exponential(1.0/29);
  
  
  // Likelihood
  for (i in 1:n){
    amount[i] ~ student_t(nu, mu[group[i]], sigma[group[i]]);
  }
}

// Stuff to calculate with Stan
generated quantities {
  // Mean difference
  real mu_diff;
  
  // Percent change: (mu[2] - mu[1]) / mu[1]
  real pct_change;

  // Effect size; see footnote 1 in Kruschke:2013
  // Standardized difference between two means
  // See https://en.wikipedia.org/wiki/Effect_size#Cohen's_d
  // (μ₁ - μ₂) / sqrt( (σ₁² + σ₂²) / 2)
  real cohen_d;
  
  // Common language effect size
  // The probability that a score sampled at random from one distribution will 
  // be greater than a score sampled from some other distribution
  // See https://janhove.github.io/reporting/2016/11/16/common-language-effect-sizes
  real cles;
  
  // Logged nu
  real log10nu;

  mu_diff = mu[2] - mu[1];
  pct_change = mu_diff / mu[1];
  cohen_d = mu_diff / sqrt((sigma[2]^2 + sigma[1]^2) / 2);
  cles = normal_cdf(mu_diff / sqrt(sigma[2]^2 + sigma[1]^2), 0, 1);
  log10nu = log10(nu);
}
