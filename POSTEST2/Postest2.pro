PREDICATES
 nondeterm anak(symbol,symbol)
 nondeterm istri(symbol,symbol)
 nondeterm pria(symbol)
 nondeterm wanita(symbol)
 nondeterm usia(symbol,integer)
 nondeterm ibu(symbol)
 nondeterm kakek(symbol)
 nondeterm adik(symbol)
 nondeterm cucu(symbol)
 
CLAUSES
 anak (jhon, james).
 anak (james, peter).
 anak (sue, ann).
 istri (mary, peter).
 istri (ann, james).
 pria(jhon).
 pria (james).
 pria (peter).
 wanita (mary).
 wanita(sue).
 wanita(ann).
 usia(jhon, 10).
 usia(sue, 13).
 
 ibu(IBU):-wanita(IBU),istri(IBU,SUAMI).
 kakek(KAKEK):-anak(A,B),anak(B,KAKEK),pria(KAKEK).
 cucu(CUCU):-anak(CUCU,B),anak(B,KAKEK),pria(CUCU).
 adik(NAMA):-usia(NAMA,Usia),Usia<13.
  GOAL
 cucu(CUCU),ibu(IBU),adik(ADIK),kakek(KAKEK).