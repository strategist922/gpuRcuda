
// system headers
#include <iostream>

// Eigen headers
#include <Eigen/Core>

// Use CUDA with ViennaCL
#define VIENNACL_WITH_CUDA 1

// Use Eigen with ViennaCL
#define VIENNACL_WITH_EIGEN 1

// ViennaCL headers
#include "viennacl/matrix.hpp"
#include "viennacl/linalg/sum.hpp"

using Eigen::Map;
using Eigen::MatrixXd;
using Eigen::VectorXd;

extern "C"
void cu_vienna_dRowSum(
    Map<MatrixXd> &Am, 
    Map<VectorXd> &rowSums)
{        
    int M = Am.cols();
    int K = Am.rows();
    int V = rowSums.size();
    
    viennacl::matrix<double> vcl_A(K,M, viennacl::context(viennacl::CUDA_MEMORY));
    viennacl::vector<double> vcl_rowSums(V, viennacl::context(viennacl::CUDA_MEMORY));
    
    viennacl::copy(Am, vcl_A); 
    
    vcl_rowSums = viennacl::linalg::row_sum(vcl_A);
    
    viennacl::copy(vcl_rowSums, rowSums);
}
