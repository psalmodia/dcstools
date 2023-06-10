#!/bin/sh
#
# You have to manually jigger the values of the following variables.

fmonth=09    # Festal month (MM)
fday=05      # Festal day (DD)
mode=2       # (one digit)
mode1=1      # mode of apolytikion1 (one digit)
kmode=8      # Katavasies mode (used for Timiotera) (one digit)
eothinon=11  # (two digits)

# The YYYYMMDD file was created by the setup.sh process and contains
# the values for the variables 'year`, `month` and `day`.
. ./YYYYMMDD


#======================================================================
#   S E R V I C E   D O C S

curl -o matins.pdf https://dcs.goarch.org/goa/dcs/p/s/${year}/${month}/${day}/ma/gr-en/se.m${month}.d${day}.ma.pdf
curl -o liturgy-variable-parts.pdf https://dcs.goarch.org/goa/dcs/p/s/${year}/${month}/${day}/li2/gr-en/se.m${month}.d${day}.li2.pdf


#======================================================================
#   M A T I N S

# God is the Lord
curl -o godisthelord.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/godisthelord.pdf
curl -o godisthelord-gr.pdf https://dcs.goarch.org/m/jmboyer/gr/oc/m${mode}/d1/ma/b/godisthelord.pdf

# Apolitikia (don't download these egain in the LITURGY section)
curl -o apolytikion.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ve/b/apolytikion.pdf
curl -o apolytikion-gr.pdf https://dcs.goarch.org/m/jmboyer/gr/oc/m${mode}/d1/ve/b/apolytikion.pdf

curl -o apolytikion1.pdf https://dcs.goarch.org/m/dedes/en/me/m${fmonth}/d${fday}/ve/b/apolytikion1.pdf
curl -o apolytikion1-gr.pdf https://dcs.goarch.org/m/marinakos/gr/me/m${fmonth}/d${fday}/ve/w/apolytikion1.pdf
curl -o apoltheotokionvm.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode1}/d1/ve/b/apoltheotokionvm.pdf

# Kathismata
curl -o kathisma11.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma11.pdf
curl -o kathisma12.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma12.pdf
#curl -o kathisma13.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma13.pdf
curl -o kathisma13.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ve/b/apoltheotokionvm.pdf
#--------------------------

curl -o kathisma21.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma21.pdf
curl -o kathisma22.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma22.pdf
curl -o kathisma23.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/kathisma23.pdf
#--------------------------

# Evlogitaria
curl -o resevlogetaria-en-b.pdf https://dcs.goarch.org/m/cremeens/en/ho/s03/ma/b/resevlogetaria.pdf

# Hymns of Ascent
curl -o antiphonsprokeimenon.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/antiphonsprokeimenon.pdf

# Katavasies
curl -o katavasies.pdf https://dcs.goarch.org/KATAVASIES-URL-IS-MISSING

# Gospel
curl -o pregospelhymn.pdf https://dcs.goarch.org/m/dedes/en/ho/s03/ma/b/pregospelhymn.pdf
curl -o psa50_mode2-en-b.pdf https://dcs.goarch.org/m/dedes/en/ho/s03/ma/b/psa50_mode2.pdf
# Lenten post-Gospel
#curl -o postgospelglory.pdf https://dcs.goarch.org/m/dedes/en/tr/d001/ma/b/postgospelglory.pdf
#curl -o postgospelboth.pdf https://dcs.goarch.org/m/dedes/en/tr/d001/ma/b/postgospelboth.pdf
#curl -o postgospelidiomelon.pdf https://dcs.goarch.org/m/dedes/en/tr/d001/ma/b/postgospelidiomelon.pdf

# Timiotera
curl -o magnificat.pdf https://dcs.goarch.org/m/dedes/en/oc/m${kmode}/d1/ma/b/magnificat.pdf
curl -o ode9-katavasia.pdf https://dcs.goarch.org/ODE9-KATAVASIA-URL-IS-MISSING

# Exaposteilaria and Lauds
curl -o eoexaposteilarion.pdf https://dcs.goarch.org/m/dedes/en/eo/e${eothinon}/w/eoexaposteilarion.pdf
curl -o exaposteilarion1.pdf https://dcs.goarch.org/m/dedes/en/me/m${fmonth}/d${fday}/ma/w/exaposteilarion1.pdf

curl -o lauds01.pdf https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/lauds01.pdf
for lnum in 1 2 3 4; do
  curl -O https://dcs.goarch.org/m/dedes/en/oc/m${mode}/d1/ma/b/lauds${lnum}.pdf
done

# Doxastiko
curl -o eodoxasticon.pdf https://dcs.goarch.org/m/dedes/en/eo/e${eothinon}/b/eodoxasticon.pdf
curl -o laudssuntheotokion.pdf https://dcs.goarch.org/m/dedes/en/ho/s03/ma/b/laudssuntheotokion.pdf


#======================================================================
#   L I T U R G Y

# Antiphon II (festal)
#curl -o antiphon2.pdf https://dcs.goarch.org/m/dedes/en/me/m${fmonth}/d${fday}/li/w/antiphon2.pdf

# Festal Entrance Hymn
#curl -o

# Any apolytikia not downloaded for Matins
#curl -o

# Standard Kontakion (default)
curl -o kontakion.pdf https://dcs.goarch.org/m/marinakos/gr/ho/s07/w/hokontakiontheotokos.pdf
# Seasonal Kontakion (festal version)
#curl -o kontakion.pdf https://dcs.goarch.org/m/dedes/en/me/m${fmonth}/d${fday}/li/w/seasonalkontakion.pdf
