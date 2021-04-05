# Akai-KKR-HEA-examples

* KKR-CPA calculation
* XC potential = PBE

Step 1
  Get Akai-KKR code from http://kkr.issp.u-tokyo.ac.jp/jp/
  # March 29, 2021 [ 03:31:26 ]

Step 2
  open terminal or consol on Linux window (e.g., Ubuntu 18.04)

Step 3
  sudo apt -y install gnuplot gfortran 
  tar zxvf cpa2002v010.tgz
  cd cpa2002v010
  
Step 4
  vi makefile
  ------(change commands following,)
  #fort = ifort
  fort = gfortran
  ------
  make
  gfortran source/gpd.f -o gpd
  
Step 5
  put CoCrFeNi file to in directory.

Step 6
  ./specx < in/CoCrFeNi | tee out/CoCrFeNi

Step 7
  ./gpd out/CoCrFeNi

Recommend to see https://www.nature.com/articles/srep39803.pdf

Appendix Step XX
  ./specx < in/CoCrFeNi_lat
  cat ./data/CoCrFeNi.info
  (lattice constant (bohr), total energy (Ry), total spin moment)
  use lattice constant of most low energy.
  Normally, the calculated lattice constant differs from the experimental value by about 3%. 
  
Appendix: OpenMP parallel calculation
(4 core case)
  export OMP_NUM_THREADS=4
(6 core case)
  export OMP_NUM_THREADS=6
(8 core case)
  export OMP_NUM_THREADS=8
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------