Pengunaan :

- ```SizedBox``` -> memungkinkan kita untuk menentukan ukuran tetap (lebar dan tinggi) untuk widget anak di dalamnya.

- ```Draggable``` -> Digunakan untuk membuat elemen yang dapat ditarik oleh pengguna

 - elemen di dalamnya

    - ```data``` -> mengirimkan data ke widget

    - ```childWhenDragging``` -> mengontrol tampilan widget selama seret berlangsung

        - ```Material``` -> sebagai representasi visual dari widget saat sedang ditarik oleh pengguna

         - ```elevation``` -> Memberikan efek bayangan

         - ```shape``` -> Menentukan bentuk dan bayangan dari elemen dalam hal ini merubah bentuk kotak menjadi lingkaran

    - ```feedback``` ->  Widget yang ditampilkan saat elemen digeser dalam hal ini lingkaran berwarna kuning

- ```DragTarget``` -> Menentukan letak dimana elemen akan dijatuhkan dalam hal ini lingkaran
 
 - ```<Color>``` -> Mengharapkan TIPE DATA dari ```(value)``` adalah TIPE DATA Color

 - ```value``` -> Parameter value adalah data yang dikirim oleh elemen yang ditarik

    ### Variabel Penting ###
    ```Color color1 = Colors.red;```
    ```Color color2 = Colors.amber;```
    ```bool isAccepted = false;```
    ```Color? TargetColor;```

 - ```onWillAccept``` -> Fungsi yang akan dipanggil ketika elemen ditarik dan dijatuhkan, disini kita selalu mengembalikan nilai ```true``` sehinggan akan selalu menerima elemen yang dijatuhkan

 - ```onAccept``` -> disini digunakan untuk merubah ```isAccepted``` dari ```false``` menjadi ```true```  dan ```TargetColor``` menjadi ```value```

 - ```builder``` -> mengubah tampilan ```DragTarget``` berdasarkan kondisi

 Parameter ```context``` adalah konteks dari widget saat ini.

 Parameter ```candidates``` berisi elemen-elemen yang sedang digeser di atas DragTarget.

 Parameter ```rejected``` berisi elemen-elemen yang tidak dapat diterima oleh DragTarget.

 - ```return (isAccepted)``` -> mengembalikan nilai jika ```isAccepted ``` = ```true```

  - ```color: TargetColor``` -> Menentukan bahwa warna adalah warna dari TargetColor dimana sebelumnya ```TargetColor``` adalah ```value``` dimana ```value``` diharapkan bertipe data Color ```<Color>```






