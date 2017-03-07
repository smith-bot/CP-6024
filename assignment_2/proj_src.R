#SOURCE CODE FOR ALL PROJECTION FUNCTIONS USED FOR CP6024
#ASSIGNMENT 2 

#Simple Linear
smp_linear <- function(pop_base, pop_launch, years, proj_years) {
  rate = (pop_launch - pop_base)/years
  pp <- (rate*proj_years)+pop_launch
  
  return(data.frame(population = pp, rate = rate))
}

#Simple Geometric
smp_geom <- function(pop_base, pop_launch, years, proj_years) {
  rate <- log(pop_launch/pop_base)*(1/years)
  pp <- pop_launch * exp(rate*proj_years)
  
  return(data.frame(population = pp, rate = rate))
}

#Simple Exp
smp_exp <- function(pop_base, pop_launch, years, proj_years) {
  rate <- ((pop_launch/pop_base)^(1/years))-1
  pp <- pop_launch*(1+rate)^proj_years
  
  return(data.frame(population = pp, rate = rate))
}

#Line Fit Projections (Linear, Quadratic, Cubic)
line_proj <- function() {
  supsmu() #projection function
}

#Geometric 
#Modified Exp
mod_exp <- function(pop_launch, years, proj_years, pop_time, rate) {
  return(population = pp, rate = rate)
}
#Logistic
#Constant Share
c_share <- function(pop_j_t, pop_j_l, pop_i_l) {
  pp = (pop_i_l/pop_j_l)*pop_j_t
  
  return(data.frame(population = pp, share = (pop_i_l/pop_j_l)))
}
#Shift Share
s_share <- function(pop_j_b, pop_j_l, pop_j_t, pop_i_b, pop_i_l, years, proj_years) {
  a = (pop_i_l/pop_j_l)
  b = (pop_i_l/pop_j_l)-(pop_i_b/pop_j_b)
  y = 1/years
  z = proj_years
  pp = (a + ((b*y)*z))*pop_j_t
  
  return(data.frame(population = pp, share = a))
}
#Growth Share
g_share <- function(pop_j_b, pop_j_l, pop_j_t, pop_i_b, pop_i_l) {
  a = pop_i_l-pop_i_b
  b = pop_j_l-pop_j_b
  c = pop_j_t-pop_j_l
  pp = pop_i_l +((a/b)*c)
  
  return(data.frame(population = pp,share = (a/b)))
}