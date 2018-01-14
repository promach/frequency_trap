v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 50100 45400 1 0 1 Gm2.sym
{
T 48805 44900 5 10 0 0 0 6 1
device=GM2
T 48805 44300 5 10 0 0 0 6 1
numslots=0
T 48805 44100 5 10 0 0 0 6 1
source=Gm2.sch
T 50100 45400 5 10 0 0 0 0 1
model-name=GM2
T 50100 45400 5 10 0 0 0 0 1
footprint=none
T 48700 46100 5 10 1 1 0 0 1
refdes=U2
}
C 48500 47700 1 0 0 vdc-1.sym
{
T 49200 48550 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 49200 48750 5 10 0 0 0 0 1
footprint=none
T 49200 48350 5 10 1 1 0 0 1
refdes=Vd
T 49200 48150 5 10 1 1 0 0 1
value='SUPPLY'
}
C 48700 47400 1 0 0 gnd-1.sym
C 50700 47700 1 0 0 vdc-1.sym
{
T 51400 48550 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 51400 48750 5 10 0 0 0 0 1
footprint=none
T 51400 48850 5 10 1 1 0 0 1
refdes=Vs
T 51400 48650 5 10 1 1 0 0 1
value=0V
}
C 50900 47400 1 0 0 gnd-1.sym
N 51000 49700 51000 48900 4
{
T 51000 49700 5 10 1 1 0 0 1
netname=Vss
}
N 48800 49700 48800 48900 4
{
T 48800 49700 5 10 1 1 0 0 1
netname=Vdd
}
C 45600 47900 1 0 0 spice-directive-1.sym
{
T 45700 48200 5 10 0 1 0 0 1
device=directive
T 45700 48300 5 10 1 1 0 0 1
refdes=A2
T 45600 47900 5 10 1 1 0 0 1
value=.GLOBAL Vdd Vss
}
C 45600 49000 1 0 0 spice-directive-1.sym
{
T 45700 49300 5 10 0 1 0 0 1
device=directive
T 45700 49400 5 10 1 1 0 0 1
refdes=A1
T 45600 49000 5 10 1 1 0 0 1
value=.INCLUDE Gm2.net
}
C 42300 49000 1 0 0 spice-directive-1.sym
{
T 42400 49300 5 10 0 1 0 0 1
device=directive
T 42400 49400 5 10 1 1 0 0 1
refdes=A5
T 42400 49100 5 10 1 1 0 0 1
value=.PARAM SUPPLY=3.3v
}
C 42300 47900 1 0 0 spice-directive-1.sym
{
T 42400 48200 5 10 0 1 0 0 1
device=directive
T 42400 48300 5 10 1 1 0 0 1
refdes=A4
T 42300 47300 5 10 1 1 0 0 3
value=.options TEMP=25
.MODEL n1 NMOS
.MODEL p1 PMOS
}
T 42600 45600 9 10 1 0 0 0 6
spice-epilog=.control
ac lin 100 1 10G
plot Vin
plot i(v_ip_out)
.endc

C 46000 43600 1 0 0 gnd-1.sym
T 44200 50600 9 14 1 0 0 0 1
Measurement of Transconductance for Gm2 circuit block
C 46300 44400 1 90 0 asic-cap-2.sym
{
T 45900 45400 5 8 0 0 90 0 1
device=CAPACITOR
T 45700 45200 5 10 1 1 180 0 1
refdes=Cout
T 45700 44700 5 10 1 1 180 0 1
value=1n
}
C 50800 45400 1 270 0 voltage-1.sym
{
T 51300 45300 5 10 0 0 270 0 1
device=VOLTAGE_SOURCE
T 51300 45000 5 10 1 1 0 0 1
refdes=Vin
T 51300 44600 5 10 1 1 0 0 1
value=DC 1.8V AC 1V
}
C 47100 45900 1 180 0 current_probe.sym
{
T 47100 45400 5 10 0 0 180 0 1
device=CURRENT_PROBE
T 46800 46130 5 6 1 1 180 0 1
refdes=V_IP_out
T 47100 45200 5 10 0 0 180 0 1
value=DC 0V
}
N 47800 45700 47100 45700 4
N 46500 45700 46100 45700 4
N 46100 45700 46100 45300 4
N 46100 44400 46100 43900 4
N 50100 45700 51000 45700 4
{
T 50100 45700 5 10 0 0 0 0 1
netname=Vin
}
N 51000 45700 51000 45400 4
C 50900 43700 1 0 0 gnd-1.sym
N 51000 44500 51000 44000 4
