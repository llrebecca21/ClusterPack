// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// Cos_Distance_c
arma::colvec Cos_Distance_c(arma::mat& X, arma::rowvec& v);
RcppExport SEXP _ClusterPack_Cos_Distance_c(SEXP XSEXP, SEXP vSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< arma::rowvec& >::type v(vSEXP);
    rcpp_result_gen = Rcpp::wrap(Cos_Distance_c(X, v));
    return rcpp_result_gen;
END_RCPP
}
// Euclid_Distance_c
arma::colvec Euclid_Distance_c(const arma::mat& X, const arma::rowvec& v);
RcppExport SEXP _ClusterPack_Euclid_Distance_c(SEXP XSEXP, SEXP vSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const arma::rowvec& >::type v(vSEXP);
    rcpp_result_gen = Rcpp::wrap(Euclid_Distance_c(X, v));
    return rcpp_result_gen;
END_RCPP
}
// KMEANS_Euc_c
arma::uvec KMEANS_Euc_c(const arma::mat& X, int K, const arma::mat& M, int numIter);
RcppExport SEXP _ClusterPack_KMEANS_Euc_c(SEXP XSEXP, SEXP KSEXP, SEXP MSEXP, SEXP numIterSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< int >::type K(KSEXP);
    Rcpp::traits::input_parameter< const arma::mat& >::type M(MSEXP);
    Rcpp::traits::input_parameter< int >::type numIter(numIterSEXP);
    rcpp_result_gen = Rcpp::wrap(KMEANS_Euc_c(X, K, M, numIter));
    return rcpp_result_gen;
END_RCPP
}
// Manhattan_Distance_c
arma::colvec Manhattan_Distance_c(const arma::mat& X, const arma::rowvec& v);
RcppExport SEXP _ClusterPack_Manhattan_Distance_c(SEXP XSEXP, SEXP vSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const arma::rowvec& >::type v(vSEXP);
    rcpp_result_gen = Rcpp::wrap(Manhattan_Distance_c(X, v));
    return rcpp_result_gen;
END_RCPP
}
// Minkowski_Distance_c
arma::colvec Minkowski_Distance_c(const arma::mat& X, const arma::rowvec& v, int p);
RcppExport SEXP _ClusterPack_Minkowski_Distance_c(SEXP XSEXP, SEXP vSEXP, SEXP pSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const arma::rowvec& >::type v(vSEXP);
    Rcpp::traits::input_parameter< int >::type p(pSEXP);
    rcpp_result_gen = Rcpp::wrap(Minkowski_Distance_c(X, v, p));
    return rcpp_result_gen;
END_RCPP
}
// Sup_Norm_c
arma::colvec Sup_Norm_c(const arma::mat& X, const arma::rowvec& v);
RcppExport SEXP _ClusterPack_Sup_Norm_c(SEXP XSEXP, SEXP vSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type X(XSEXP);
    Rcpp::traits::input_parameter< const arma::rowvec& >::type v(vSEXP);
    rcpp_result_gen = Rcpp::wrap(Sup_Norm_c(X, v));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_ClusterPack_Cos_Distance_c", (DL_FUNC) &_ClusterPack_Cos_Distance_c, 2},
    {"_ClusterPack_Euclid_Distance_c", (DL_FUNC) &_ClusterPack_Euclid_Distance_c, 2},
    {"_ClusterPack_KMEANS_Euc_c", (DL_FUNC) &_ClusterPack_KMEANS_Euc_c, 4},
    {"_ClusterPack_Manhattan_Distance_c", (DL_FUNC) &_ClusterPack_Manhattan_Distance_c, 2},
    {"_ClusterPack_Minkowski_Distance_c", (DL_FUNC) &_ClusterPack_Minkowski_Distance_c, 3},
    {"_ClusterPack_Sup_Norm_c", (DL_FUNC) &_ClusterPack_Sup_Norm_c, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_ClusterPack(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
