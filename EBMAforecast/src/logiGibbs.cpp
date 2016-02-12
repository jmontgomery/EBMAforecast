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
    Rcpp::NumericMatrix theta_numerator(leng,width);
    Rcpp::NumericVector theta_denom(leng);
    Rcpp::NumericMatrix theta(leng,width);
    Rcpp::NumericMatrix T(leng,width);
    Rcpp::NumericVector nu(leng);
    Rcpp::NumericVector w_gamma(width);
    Rcpp::NumericMatrix W_post(iterations,width);
    
for (int iterator = 0; iterator < iterations; iterator++){;
    for (int i =0; i < leng; i++){;
      if(outcome(i) == 1){;
        for(int m = 0; m < width; m++) {;
          theta(i,m) = W(m)* prediction(i,m);
        }
      }  
      if(outcome(i) == 0){;
        for(int m = 0; m < width; m++) {;
          theta(i,m) = W(m)*(1 - prediction(i,m));
        };
      };
      theta_denom(i) = sum(theta_numerator(i,_));
    };
    
    
    
    for(int i = 0; i<width; i++){;
      for(int m=0; m<leng; m++){;
        theta(i,m) = theta_numerator(i,m)/theta_denom(i);
      };    
    };    
    
    
   for(int i=0; i<leng; i++){;
     IntegerMatrix sampled(leng,width);
     T(i,_) = oneMultinomC(theta(i,_));
   };
    
   // for(int m=0; m<width; m++){
   //   nu(m) = 1 + sum(T(_,m));
   // }  
    
  //  for(int m = 0; m<width; m++){
  //    w_gamma(m) = double(getRGamma(nu(m))[1]);
  //  }
    
   // W_post(iterator,_) =  w_gamma/double(sum(w_gamma));
} ;   
    
    
    
    
    return Rcpp::List::create(Rcpp::Named("W") = W, Rcpp::Named("theta") = theta);
}






