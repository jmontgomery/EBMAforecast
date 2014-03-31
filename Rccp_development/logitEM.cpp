#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

// [[Rcpp::export]]
Rcpp::List em(Rcpp::NumericVector outcome,
  		     Rcpp::NumericMatrix prediction, Rcpp::NumericVector W, double tol, int maxIter
			     ) {
    double LL = 0.00;
    double LL_old = 0.00;
    int leng = prediction.nrow();
    int width = prediction.ncol();
    int iter = 0 ;
    double improv = 1.1;

while((improv > tol) & (iter < maxIter)){
    Rcpp::NumericMatrix  znumerator(leng,width);
    Rcpp::NumericMatrix Zs(leng,width); 
    Rcpp::NumericVector zdenom(leng);
    Rcpp::NumericVector unnormalizedW(width);
    Rcpp::NumericVector w_old(W);
    for (int r = 0; r < leng; r++) {; 
      if(outcome(r)==1){;
        for (int i = 0; i < width; i++) {
      znumerator(r,i) = prediction(r,i)*w_old(i);
        }
     } 
     if(outcome(r)==0){;
       for (int i = 0; i < width; i++) {
       znumerator(r,i) = (1-prediction(r,i))*(w_old(i));
    }
    }
   LogicalVector na_test = is_na(znumerator(r,_));
    for (int q = 0; q < width; q++) {;
   if(na_test(q)==TRUE or znumerator(r,q)< 1e-4 ){;
     znumerator(r,q)=0;
        }
      }
   zdenom(r) = sum(znumerator(r,_));
     }
     
  for(int r = 0; r<width; r++){;
    for(int i=0; i<leng; i++){
  Zs(i,r) = znumerator(i,r)/zdenom(i);
    }
  LogicalVector na_testz = is_na(Zs(_,r));
  for (int q = 0; q < leng; q++) {;
      if(na_testz(q)==TRUE or Zs(q,r)< 1e-4){;
        Zs(q,r)=0;
          }
        }
   }
   for(int r = 0; r<width; r++){;
    unnormalizedW[r] = (sum(Zs(_,r)));
  }
   W = unnormalizedW / double(sum(unnormalizedW));
   for(int r = 0; r<width; r++){;
     if(W(r)<1e-4){;
       W(r) = 0;
     }
   }
  LL = sum(log(zdenom));
  double top = double(fabs(LL_old-LL));
  double bot = (1.0+fabs(LL));
  improv  = top/bot;
  LL_old = LL;
  iter +=1;
}
  return Rcpp::List::create(Rcpp::Named("LL") = LL,Rcpp::Named("W") = W,Rcpp::Named("Iterations") = iter, Rcpp::Named("improv") = improv);
}






