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
    Rcpp::List theta_post(iterations);
    Rcpp::NumericMatrix W_post(iterations,width);
    
for (int iterator = 0; iterator < iterations; iterator++){;
    Rcpp::NumericVector W_use(width);
    Rcpp::NumericMatrix theta(leng,width);
    Rcpp::NumericMatrix numerator(leng,width);
    Rcpp::NumericVector denom(leng);
    Rcpp::NumericVector nu(leng);
    Rcpp::NumericMatrix T(leng,width);
    Rcpp::NumericVector w_gamma(width);
    if(iterator == 0){;
      W_use = W;
    }
    if(iterator > 0){;
      W_use = W_post(iterator-1,_);
    }  
    for (int i =0; i < leng; i++){;
      if(outcome(i) == 1){;
        for(int m = 0; m < width; m++) {;
          numerator(i,m) = prediction(i,m)*(W_use(m));
        }
      }  
      if(outcome(i) == 0){;
        for(int m = 0; m < width; m++) {;
          numerator(i,m) = (1 - prediction(i,m))*(W_use(m));
        };
      };
      denom(i) = sum(numerator(i,_));
      theta(i,_) = numerator(i,_)/denom(i);
    };
    
   theta_post(iterator) = theta; 
    
  for(int i=0; i<leng; i++){;
     T(i,_) = oneMultinomC(theta(i,_));
    };
     
  for(int m=0; m<width; m++){
       nu(m) = 1 + sum(T(_,m));
    }  
   
  for(int m = 0; m<width; m++){
     w_gamma(m) = double(getRGamma(nu(m))[1]);
  }
  for(int m = 0; m<width; m++){
    W_post(iterator,m) =  w_gamma(m)/double(sum(w_gamma));;
  }
};   
    
    
    
    
    return Rcpp::List::create(Rcpp::Named("theta_post") = theta_post, Rcpp::Named("W_post") = W_post);
}

//Rcpp::Named("W_post") = W_post,





