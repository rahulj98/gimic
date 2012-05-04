import numpy as np
cimport numpy as np
from gengauss cimport mkgausspoints

def gausspoints(double a, double b, 
        np.ndarray[np.double_t, ndim=1] pts, 
        np.ndarray[np.double_t, ndim=1] wgts):
    cdef int npts
    npts = pts.size
    mkgausspoints(&a, &b, &npts, <double *> pts.data, <double *> wgts.data)

