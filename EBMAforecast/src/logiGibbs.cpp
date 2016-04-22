#include <Rcpp.h>
using namespace Rcpp;


// [[Rcpp::export]]
IntegerVector oneMultinomCalt(NumericVector probs) {
  int k = probs.size();
  IntegerVector ans(k);
  rmultinom(1, probs.begin(), k, ans.begin());
  return(ans);
}

// [[Rcpp::export]]
NumericVector getRGamma(double shape) { 
  RNGScope scope;
  NumericVector x = rgamma(1, shape, 1 );
  return x;
}



// [[Rcpp::export]]
Rcpp::List GibbsLogit(Rcpp::NumericVector outcome, Rcpp::NumericMatrix prediction, Rcpp::NumericVector W, int iterations, int burnin, int thin) {
    
    int leng = prediction.nrow();
    int width = prediction.ncol();
    int outcount = 0;
    int output = round((iterations-burnin)/thin);
    Rcpp::List theta_post(iterations);
    Rcpp::NumericMatrix W_post(iterations,width);
    Rcpp::NumericMatrix W_out(output,width);

for (int iterator = 0; iterator < iterations; iterator++){;
    Rcpp::NumericVector W_use(width);
    Rcpp::NumericMatrix theta(leng,width);
    Rcpp::NumericMatrix numerator(leng,width);
    Rcpp::NumericVector denom(leng);
    Rcpp::NumericMatrix T(leng,width);
    Rcpp::NumericVector w_gamma(width);
    Rcpp::NumericVector nu(width);
    
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
     T(i,_) = oneMultinomCalt(theta(i,_));
    };
     
  for(int m=0; m<width; m++){
       nu(m) = 1 + sum(T(_,m));
    }  
   
  double sample_sum = 0;
  for(int m = 0; m<width; m++){
     w_gamma(m) = as<double>(rgamma(1, nu(m), 1));
    sample_sum += w_gamma(m);
  }
  for(int m = 0; m<width; m++){
    W_post(iterator,m) =  w_gamma(m)/sample_sum;
    if(((iterator+1) % 3 == 0) and (iterator+1 > burnin)){;
      W_out(outcount,m) =   W_post(iterator,m);
    }
  }
  if(((iterator+1) % thin == 0) and (iterator+1 > burnin)){;
    outcount += 1;
  }  
  if ((iterator+1) % 1000 == 0 ){;
  Rcpp::Rcout << "Iteration: " << iterator+1 << std::endl;
  }
};   
    
    
    
    
    return Rcpp::List::create(Rcpp::Named("W_out") = W_out);
}


