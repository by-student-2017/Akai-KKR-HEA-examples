KKR-CPA calculation
XC potential = PBE

Step 1
  Get to Akai-KKR from http://kkr.issp.u-tokyo.ac.jp/jp/

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
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
CrMnFeCoNi
[1] Z. Qiu et al., International Journal of Lightweight Materials and Manufacture, 1 (2018) 33-39.
  The XRD pattern of the initial CrMnFeCoNi HEA in Fig. 1a shows that the LAM HEA has 
a simple FCC crystalline structure with diffraction peaks at 43.490‹, 50.670‹, 74.460‹, 
90.400‹, 95.670‹. The lattice constant is calculated to be 3.598 Angstrom using 
the Nelson?Riley extrapolation method [27]. 
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
CoCrFeNi and CoCrFeMnNi
[2] E-Wen. Huang et al., Scientific Reports volume 9, Article number: 14788 (2019).
Both CoCrFeNi and CoCrFeMnNi alloys exhibit a single FCC phase, with lattice constants of
 3.57 Angstrom and 3.59 Angstrom, respectively. 
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
[3] Y. Bu et al., Entropy 2018, 20(10), 778; https://doi.org/10.3390/e20100778
This is consistent with the reported lattice parameter (3.579 Angstrom) of the bulk CoCrCuFeNi [1,18]. 
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
[4] Z. D. Han et al., Intermetallics, 84 (2017) 153-157.
  Fig.1a shows the XRD spectra of the as-cast TiNbMoTaW HEAsample and the one annealed at
1200 degree of Celsuis for 24 h. Sharp diffractionpeaks are observed in the as-cast sample,
which have been indexedas peaks resulted from a single BCC phase with a lattice constant of 3.240 Angstrom.
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
