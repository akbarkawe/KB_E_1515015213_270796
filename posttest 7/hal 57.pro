DOMAINS
nama	= symbol
matkul	= symbol
nilaimk	= symbol

PREDICATES
nondeterm matakuliah(nama,matkul,nilaimk)
nondeterm gaklulus(nama,matkul,nilaimk)

CLAUSES
matakuliah("supardi","Intelejensi Buatan",a).
matakuliah("suradi","Intelejensi Buatan",b).
matakuliah("suyatmi","Intelejensi Buatan",c).
matakuliah("suparni","Intelejensi Buatan",d).
matakuliah("sujiman","Intelejensi Buatan",c).

matakuliah("supardi","PDE",b).
matakuliah("suradi","PDE",c).
matakuliah("suyatmi","PDE",c).
matakuliah("suparni","PDE",b).
matakuliah("sujiman","PDE",d).

matakuliah("supardi","Sistem Operasi",b).
matakuliah("suradi","Sistem Operasi",a).
matakuliah("suyatmi","Sistem Operasi",a).
matakuliah("suparni","Sistem Operasi",b).
matakuliah("sujiman","Sistem Operasi",c).

gaklulus(Nama,Matkul,nilaimk):-
	matakuliah(Nama,Matkul,d).
	
GOAL
write("NO.1"),nl,
write("Menampilkan Nilai Supardi beserta matakuliahnya"),nl,
matakuliah(supardi,Matakuliah_Yang_Diambil ,Nilai);
nl,
write("NO.3"),nl,
write("Menampilkan Mahasiswa yang tidak lulus besera matakuliahnya"),nl,
gaklulus(Nama ,Matkul,_);
nl,
write("NO.2"),nl,
write("Menampilkan Apakah Suripah mengikuti perkuliahan pada semester ini"),nl,
write("Apakah Suripah Ikut Kuliah Semester Ini ? "),nl,
matakuliah(suripah,_,_).

