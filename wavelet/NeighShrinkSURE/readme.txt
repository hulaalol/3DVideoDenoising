This package contains Matlab codes for denoisinig greyscale images using 
NeighShrink SURE [1] implemented with a decimated wavelet transform.
This software is non-optimized Matlab codes and provided for non-commercial
and research purposes only. If you find any bugs or have any suggestions, 
please contact with me.

References:
[1] Zhou Dengwen, Cheng Wengang, "Image denoising with an optimal
      threshold and neighbouring window," 
      Pattern Recognition Letters, vol.29, no.11, pp.1694¨C1697, 2008

Designed by:  Zhou Dengwen
                     zdw@ncepu.edu.cn
	     Department of Computer Science & Technology
	     North China Electric Power University(Beijing)(NCEPU)

Filies:
        NeighShrinkSUREdenoise: denoising main function using NeighShrink SURE (DWT)
        SubbandThresholding: thresholding the noisy subband according to NeighShrink SURE rule
        OptimalThreshold:  given the neighborhood size, computing an optimal threshold using 
                                    NeighShrink SURE rule
        Calc_MSE_PSNR: computing MSE and PSNR
        test: denoising demonstration

Copyright (c) 2008 Zhou Dengwen. All Rights Reserved.

Zhou Dengwen
July 15, 2008