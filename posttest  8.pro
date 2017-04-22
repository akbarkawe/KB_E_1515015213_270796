/*****************************************************************************
project = posttest 7
Nama = Muhammad Akbar
Nim  = 1515051213


******************************************************************************/

domains
  person = p(nama, ttl, jenis_kelamin, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan)  /* variabel yang digunakan disini yaitu nama, ttl, jenis_kelamin,alamat,agama,status_perkawinan,pekerjaan,kewarganegaraan */
  nama, ttl, jenis_kelamin, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan = string /* penentuan tipe data apa yang digunakan untuk variabel yang kita pakai */

predicates
  run - procedure () /* variabel run adalah variabel yang menampung program dan yang akan dipanggil ketika di goal */

clauses
  run:-
      write("-Penginputan Registrasi KTP-"),nl,   /* awal untuk tampilan program, disini ditampilkan menggunakan fungsi write dan untuk penyimpanan isi variabel digunakan fungsi readln */
      write(" Masukkan Nama Anda : "), readln(Nama), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel nama */ 
      write(" Tempat/tanggal lahir Anda : "), readln(Ttl), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel ttl */
      write(" Jenis Kelamin Anda : "), readln(Jenis_kelamin), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel jenis kelamin */
      write(" Alamat Anda Sekarang : "), readln(Alamat), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel alamat */
      write(" Agama Anda : "), readln(Agama), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel agama */
      write(" Status_Perkawinan Anda : "), readln(Status_perkawinan), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel status perkawinan */
      write(" Pekerjaan Anda Sekarang : "), readln(Pekerjaan), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel pekerjaan */
      write(" Kewarganegaraan Anda : "), readln(Kewarganegaraan), /* disini merupakan pernyataan yang akan digunakan untuk mengisi variabel kewarganegaraan */
      P=p(Nama,Ttl,Jenis_kelamin,Alamat,Agama,Status_perkawinan,Pekerjaan,Kewarganegaraan), /* variabel p disini digunakan untuk menampung semua isi dari variabel2 yang telah diisi diatas dan akan dipanggil ketika ingin menampilkan biodata */ 
      write(P),nl,
      write("Apakah Data Yang Anda Masukkan Benar, y = Jika Data Yang Dimasukkan Benar | n = Jika Ingin Mengulang"), /* lacak balik disini berfungsi untuk mengulang inputan biodata jika anda mengetikan huruf selain huruf "y"*/ 
      readchar(Ch),nl,Ch='y', !. /* pendeklarasian lacak balik dimana jika menginputkan huruf "y" maka program berhenti */

  run :-                    /* jika aturan diatas terpenuhi untuk mengulang program, run ini akan dijalan kan, tapi jika pengguna telah memasukkan huruf "y" maka bagian ini akan diabaikan */
	 nl,nl,
	 write("Mengulang Penginputan Biodata"),
	 nl,nl,run.

goal
  
  run.
