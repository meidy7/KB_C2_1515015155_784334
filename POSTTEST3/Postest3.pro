PREDICATES
 nondeterm nilai(string,string,string)
 nondeterm mahasiswa(symbol)
 nondeterm tidak_lulus(symbol)
 nondeterm lulus(symbol)
 nondeterm matakuliah(symbol)
CLAUSES
nilai("intelejensi buatan","Irfan","A").
nilai("intelejensi buatan","Komeng","D").
nilai("intelejensi buatan","Dati","C").
nilai("intelejensi buatan","Fatima","B").
nilai("intelejensi buatan","Maspion","C").

nilai("PDE","Ricky","E").
nilai("PDE","Embang","A").
nilai("PDE","Salmin","D").
nilai("PDE","Vina","B").
nilai("PDE","Sondang","C").

nilai("Sistem Operasi","Pamuji","D").
nilai("Sistem Operasi","Luki","E").
nilai("Sistem Operasi","Sadek","B").
nilai("Sistem Operasi","Yusida","A").
nilai("Sistem Operasi","Eka","A").

mahasiswa(Mahasiswa):-nilai(_,Mahasiswa,_).
tidak_lulus(Gagal):-nilai(_,Gagal,"D");nilai(_,Gagal,"E").
lulus(Lulus):-nilai(_,Lulus,"A");nilai(_,Lulus,"B");nilai(_,Lulus,"C").
matakuliah(Matakuliah):-nilai(Matakuliah,_,_).
  GOAL
 nilai("intelejensi buatan",IB,_);
 tidak_lulus(Gagal);
 lulus(Lulus);
 matakuliah(Matakuliah);
 mahasiswa(Mahasiswa).