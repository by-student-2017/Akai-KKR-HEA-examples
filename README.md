# Akai-KKR-HEA-examples

* KKR-CPA calculation
* XC potential = PBE
* check Akai-KKR (March 29, 2021 [ 03:31:26 ])
* http://kkr.issp.u-tokyo.ac.jp/jp/

## Installation
1. Get Akai-KKR code from http://kkr.issp.u-tokyo.ac.jp/jp/
2. open terminal or consol on Linux window (e.g., Ubuntu 18.04)
3. sudo apt -y install gnuplot gfortran 
4. tar zxvf cpa2002v010.tgz
5. cd cpa2002v010
6. vi makefilz
	#fort = ifort
	fort = gfortran
7. make
8. gfortran source/gpd.f -o gpd


## Usage
1. git clone https://github.com/by-student-2017/Akai-KKR-HEA-examples.git
2. put CoCrFeNi file to in directory.
3. ./specx < in/CoCrFeNi | tee out/CoCrFeNi
4. ./gpd out/CoCrFeNi


* Recommend to see https://www.nature.com/articles/srep39803.pdf


## Appendix: Step XX
3. ./specx < in/CoCrFeNi_lat
4. cat ./data/CoCrFeNi.info
	(lattice constant (bohr), total energy (Ry), total spin moment)
	use lattice constant of most low energy.
	Normally, the calculated lattice constant differs from the experimental value by about 3%. 


## Appendix: OpenMP parallel calculation
	(4 core case)
	export OMP_NUM_THREADS=4
	(6 core case)
	export OMP_NUM_THREADS=6
	(8 core case)
	export OMP_NUM_THREADS=8
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------