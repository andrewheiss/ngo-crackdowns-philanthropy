// One-sample proportion test to see if a sample matches national proportions
//
// Here, θ = proportion of population that matches a given characteristic.
//
// I'm modeling θ as a flat uniform beta distribution with a = 1 and b = 1

// Stuff coming from R
data {
  int<lower=0> x;  // Count of people with a given characteristic
  int<lower=0> n_total;  // Total number of people in the sample
  real<lower=0> pop_prop;  // Population proportion to compare with x / n_total
}

// Stuff to estimate
parameters { 
  real<lower=0, upper=1> theta;  // Estimated proportion
}

// Models and distributions
model {
  // Priors
  theta ~ beta(1, 1);
  
  // Likelihood
  x ~ binomial(n_total, theta);
}

// Stuff to calculate with Stan
generated quantities {
  // Difference between estimated group proportion and actual population proportion
  real diff;
  diff = theta - pop_prop;
}
