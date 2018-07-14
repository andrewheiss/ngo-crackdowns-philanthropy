// Stuff coming from R
data {
  int x;
  int total_n;
  real pop_prop;
}
// Stuff to estimate
parameters { 
  real<lower=0,upper=1> theta;
}
// Models and distributions
model {
  theta ~ beta(1, 1);
  x ~ binomial(total_n, theta);
}
// Calculate diffs here
generated quantities {
  real diff;
  diff = theta - pop_prop;
}
