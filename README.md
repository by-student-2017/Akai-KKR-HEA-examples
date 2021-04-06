# Akai-KKR-HEA-examples

* KKR-CPA calculation
* XC potential = PBE
* HEA = High Entropy Alloy
* Akai-KKR (March 29, 2021 [ 03:31:26 ])

## Installation
1. Get Akai-KKR code from http://kkr.issp.u-tokyo.ac.jp/jp/
2. open terminal or consol on Linux window (e.g., Ubuntu 18.04 or Ubuntu 18.04 LTS on WSL))
3. sudo apt -y install gnuplot gfortran build-essential
4. tar zxvf cpa2002v010.tgz
5. cd cpa2002v010
6. vi makefil

	#fort = ifort

	fort = gfortran

7. make
8. gfortran source/gpd.f -o gpd
9. gfortran util/fmg.f -o fmg


## Usage
1. git clone https://github.com/by-student-2017/Akai-KKR-HEA-examples.git
2. put CoCrFeNi file to in directory.
3. ./specx < in/CoCrFeNi | tee out/CoCrFeNi
4. ./gpd out/CoCrFeNi


* Recommend to see https://www.nature.com/articles/srep39803.pdf


## Appendix: Step XX
3. ./specx < in/CoCrFeNi_lat
4. cat ./data/CoCrFeNi.info
* (lattice constant (bohr), total energy (Ry), total spin moment)
* use lattice constant of most low energy.
* Normally, the calculated lattice constant differs from the experimental value by about 3%. 
* The CPA method is theoretically acceptable for any mixing ratio. 
* At present, the effect of stabilizing the energy more by slightly shifting the atomic position from the FCC etc. is not included. If you want to take such an effect into consideration, you need to calculate with PWscf or VASP using a supercell. A supercell (e.g., special quasirandom structure; SQS) calculation is very costly. Think carefully about whether you really need a calculation that includes this effect. It is unreasonable to demand unnecessarily high accuracy. 
* More detail: KKR-CPA (or CPA method in general) is a method developed to handle irregular systems with finite concentrations (including dilute limits), and is a single site approximation not only for dilute systems but also for any concentration. It is the best approximation to the placement mean (the best is the best in the variational sense). In the case of the dilute limit, it is not necessary to use CPA and it can be treated as an impurity problem of KKR. 

## Appendix: OpenMP parallel calculation
	(4 core case)
	export OMP_NUM_THREADS=4
	(6 core case)
	export OMP_NUM_THREADS=6
	(8 core case)
	export OMP_NUM_THREADS=8


## Appendix: Older version (e.g., cpa2002v010.tgz.9Mar2021) installation
1. Get Akai-KKR code from http://kkr.issp.u-tokyo.ac.jp/jp/
2. open terminal or consol on Linux window (e.g., Ubuntu 18.04 or Ubuntu 18.04 LTS on WSL)
3. sudo apt -y install gnuplot gfortran build-essential
4. mv cpa2002v010.tgz.9Mar2021 cpa2002v010.tgz
5. tar zxvf cpa2002v010.tgz.9Mar2021
6. cd cpa2002v010
7. vi makefil

	#fort = ifort

	fort = gfortran

8. make
9. gfortran source/gpd.f -o gpd
10. gfortran util/fmg.f -o fmg
