v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 50000 46900 1 0 0 asic-pmos-1.sym
{
T 51400 47700 5 8 0 0 0 0 1
device=PMOS_TRANSISTOR
T 50900 47700 5 10 1 1 0 0 1
refdes=M4
T 50900 47500 5 8 1 1 0 0 1
model-name=P1
T 50900 47200 5 8 1 0 0 0 1
w=3u
T 50900 47000 5 8 1 0 0 0 1
l=0.4u
T 50000 46900 5 10 1 0 0 0 1
m=25
}
N 50700 47400 50800 47400 4
N 50600 47900 50600 48200 4
{
T 50400 48300 5 10 1 1 0 0 1
netname=Vdd
}
C 50000 45200 1 0 0 asic-nmos-1.sym
{
T 51400 46000 5 8 0 0 0 0 1
device=NMOS_TRANSISTOR
T 50900 46000 5 10 1 1 0 0 1
refdes=M1
T 50900 45800 5 8 1 1 0 0 1
model-name=N1
T 50900 45500 5 8 1 0 0 0 1
w=3u
T 50900 45300 5 8 1 0 0 0 1
l=1.2u
T 50000 45200 5 10 1 0 0 0 1
m=25
}
N 50700 45700 50800 45700 4
N 50800 45100 50800 45700 4
N 50600 44900 50600 45200 4
{
T 50700 44800 5 10 1 1 0 0 1
netname=Vss
}
N 49700 47400 49700 45700 4
N 50000 47400 49700 47400 4
N 50000 45700 49700 45700 4
N 50600 46900 50600 46200 4
N 50600 45100 50800 45100 4
N 50800 47400 50800 48000 4
N 50800 48000 50600 48000 4
C 49100 46400 1 0 0 in-1.sym
{
T 49100 46700 5 10 0 0 0 0 1
device=INPUT
T 49100 46700 5 10 1 1 0 0 1
refdes=IN
T 49100 46400 5 10 0 0 0 0 1
pinseq=1
}
C 50600 46400 1 0 0 out-1.sym
{
T 50600 46700 5 10 0 0 0 0 1
device=OUTPUT
T 50700 46600 5 10 1 1 0 0 1
refdes=OUT
T 50600 46400 5 10 0 0 0 0 1
pinseq=2
}
T 46200 49200 8 10 1 1 0 0 1
spice-prolog=.subckt INV1 %up
