DOMAINS
integerlist = integer* /* tipe data yang terdapat dalam list ini menggunakan integer dengan menggunakan list*/
PREDICATES
tambah(integerlist,integerlist,integerlist) /*variabel tambah yang mencakup 3 paramater integerlist didalamnya*/
CLAUSES
tambah([],List,List).   /*variabel tambah disini merupakan fakta yang dimana di dalam parameter itug isinya kosong dan bisa di panggil kapan saja */
tambah([H|L1],List2,[H|L3]):- /*dengan fakta yang telah ditentukan diatas maka kita bisa memecahkan lits yang ekuivalen  */
tambah(L1,List2,L3).   /* variabel L3  disini adalah tail nya yang terdapat di dalam list tersebut*/
GOAL
tambah([1,2,3],[5,6],L). /* dan di goal nya sendiri dimana [1,2,3] sebagai L1 dan [5,6] adalah L2 yang dimana merupakan list Ke2 dan Juga angka 1 disebut head dan 2,3 adalah tail nya karna saling terkait */