#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector oneMultinomC(NumericVector probs) {
  int k = probs.size();
  SEXP ans;
  PROTECT(ans = Rf_allocVector(INTSXP, k));
  probs = Rf_coerceVector(probs, REALSXP);
  rmultinom(1, REAL(probs), k, &INTEGER(ans)[0]);
  UNPROTECT(1);
  return ans;
}

// [[Rcpp::export]]
NumericVector getRGamma(double shape) { 
  RNGScope scope;
  NumericVector x = rgamma(1, shape, 1 );
  return x;
}



// [[Rcpp::export]]
Rcpp::List GibbsLogit(Rcpp::NumericVector outcome, Rcpp::NumericMatrix prediction, Rcpp::NumericVector W, int iterations) {
    
    int leng = prediction.nrow();
    int width = prediction.ncol();
    Rcpp::NumericMatrix theta(leng,width);
    Rcpp::NumericMatrix numerator(leng,width);
    Rcpp::NumericVector denom(leng);
    Rcpp::NumericMatrix T(leng,width);
    Rcpp::NumericVector nu(leng);
    Rcpp::NumericVector w_gamma(width);
    Rcpp::NumericMatrix W_post(iterations,width);
    
for (int iterator = 1; iterator < iterations; iterator++){;
    if(iterator == 1){;
      W_post(iterator-1,_) = W;
    }
    for (int i =0; i < leng; i++){;
      if(outcome(i) == 1){;
        for(int m = 0; m < width; m++) {;
          numerator(i,m) = prediction(i,m)*(W_post(iterator-1,m));
        }
      }  
      if(outcome(i) == 0){;
        for(int m = 0; m < width; m++) {;
          numerator(i,m) = (1 - prediction(i,m))*(W_post(iterator-1,m));
        };
      };
      denom(i) = sum(numerator(i,_));
      theta(i,_) = numerator(i,_)/denom(i);
    };
    
    
    
  for(int i=0; i<leng; i++){;
    T(i,_) = oneMultinomC(theta(i,_));
   };
    
   for(int m=0; m<width; m++){
      nu(m) = 1 + sum(T(_,m));
   }  
    
  for(int m = 0; m<width; m++){
    w_gamma(m) = double(getRGamma(nu(m))[1]);
  }
   
   W_post(iterator,_) =  w_gamma/double(sum(w_gamma));;
};   
    
    
    
    
    return Rcpp::List::create(Rcpp::Named("W_post") = W_post, Rcpp::Named("theta_n") = numerator, Rcpp::Named("theta_d") = denom);
}






