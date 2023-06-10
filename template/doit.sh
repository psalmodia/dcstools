#!/bin/sh
#
# You may need to manually adjust the page ranges in the qpdf command
# below.

. ../template/_build.sh
. ./YYYYMMDD

cat <<EOF | _build ${year}${month}${day}-matins-liturgy.pdf
#    ____       __  __
#   / __ \_____/ /_/ /_  _________  _____
#  / / / / ___/ __/ __ \/ ___/ __ \/ ___/
# / /_/ / /  / /_/ / / / /  / /_/ (__  )
# \____/_/   \__/_/ /_/_/   \____/____/
#
  matins.pdf 1-1
  ../template/cu.matinsordinary.pdf 1-3,12-20
  godisthelord-gr.pdf 1
  godisthelord.pdf
  apolytikion-gr.pdf
  apolytikion.pdf
  apolytikion1.pdf
  apoltheotokionvm.pdf
  matins.pdf 4
  kathisma11.pdf
  kathisma12.pdf
  kathisma13.pdf
  kathisma21.pdf
  kathisma22.pdf
  kathisma23.pdf
  ../template/resevlogetaria-en-b.pdf
  matins.pdf 8-9
  antiphonsprokeimenon.pdf
  matins.pdf 10-11
  katavasies.pdf 1-7
  ###pregospelhymn.pdf  # I don't need the music for this now.
  matins.pdf 13-17

  # if standard post-gospel hymns:
    psa50_mode2-en-b.pdf 5-5
  # if lenten post-gospel hymns:
    # postgospelglory.pdf
    # postgospelboth.pdf
    # postgospelidiomelon.pdf

  matins.pdf 18-18
  magnificat.pdf
  ode9-katavasia.pdf
  matins.pdf 19-21
  eoexaposteilarion.pdf
  exaposteilarion1.pdf
  matins.pdf 22-22    # might not need this.
  lauds01.pdf
  lauds1.pdf
  lauds2.pdf
  matins.pdf 24-26
  eodoxasticon.pdf
  laudssuntheotokion.pdf

#      __    _ __
#     / /   (_) /___  ___________ ___  __
#    / /   / / __/ / / / ___/ __  / / / /
#   / /___/ / /_/ /_/ / /  / /_/ / /_/ /
#  /_____/_/\__/\__,_/_/   \__, /\__, /
#                         /____//____/
#
  ../template/Doxology-Green-Book-1977.pdf  # stop at page 8 if you have a sub hymn
  # if during Pentecostarion:
    # ../template/christisrisen-cropped.pdf

  #------------------------------------------------
  # ANTIPHON VERSES

  # if standard antiphon verses:
    ../template/Choir-DL-Book-20220402.pdf 1-11
  # if special antiphon verses:
    # ../template/Choir-DL-Book-20220402.pdf 1-4
    # liturgy-variable-parts.pdf 1
    # ../template/Choir-DL-Book-20220402.pdf 5-7
    # liturgy-variable-parts.pdf 2
    # ../template/Choir-DL-Book-20220402.pdf 8-11

  #------------------------------------------------
  # "SPECIALS" (Pre- and Post- Entrance Hymns)

  liturgy-variable-parts.pdf 3
  apolytikion.pdf
  ../template/entrance-hymn.pdf
  apolytikion-gr.pdf
  apolytikion1.pdf
  ../template/church-hymn.pdf
  kontakion.pdf

  #------------------------------------------------
  # EPISTLE & GOSPEL

  ../template/Choir-DL-Book-20220402.pdf 14-17
  liturgy-variable-parts.pdf 8-9
   ../template/Choir-DL-Book-20220402.pdf 18-19
  liturgy-variable-parts.pdf 9-10

  #------------------------------------------------
  # CHERUBIC HYMN

  ../template/Choir-DL-Book-20220402.pdf 20
  ####../template/Cherubic-Hymn-Pl-4th-Herron.pdf 1-z
  ../template/Cherubic-Hymn-HTFW-letter.pdf   # <-- use the terrible Cherubic by default. :(

  #------------------------------------------------
  # HYMN TO THE THEOTOKOS

  # if standard Theotokos (Axion Estin)
    ../template/Choir-DL-Book-20220402.pdf 21-43
  # if substitute Theotokos
    # ../template/Choir-DL-Book-20220402.pdf 21-32
    # ode9-katavasia.pdf
    # ###theotokoshymn.pdf
    # ###../template/inyouolady8.pdf
    # ../template/Choir-DL-Book-20220402.pdf 34-43

  #------------------------------------------------
  # COMMUNION HYMNS

  # Special (priest's) communion hymns:
    # communionhymn.pdf
    # communionhymn-gr.pdf
  ../template/Polyeleos-135_0.pdf 1-z  # This "camp song" is our standard (people's) communion hymn. :(

  #------------------------------------------------
  # We Have Seen The Light ...

  # if standard:
    ../template/Choir-DL-Book-20220402.pdf 44
  # if substitute (add below):
    # ../template/christisrisen-cropped.pdf

  #------------------------------------------------
  # MEMORIAL

  # if NO memorial do this:
    ../template/Choir-DL-Book-20220402.pdf 46-z
  # if memorial, do this:
    # ../template/Choir-DL-Book-20220402.pdf 46-48
    # ../template/evlogetaria_GOA.pdf
    # ../template/kontakion_GOA.pdf
    # ../template/trisagion_GOA.pdf
    # ../template/memorial-service.pdf
    # ../template/memory_GOA.pdf
    # ../template/Choir-DL-Book-20220402.pdf 48-z
EOF
