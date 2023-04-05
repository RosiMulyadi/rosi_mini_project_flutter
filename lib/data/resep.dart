class Resep {
  String nama;
  String harga;
  String tutorial;
  String image;
  bool isFavorite;
  bool isOrdered;

  Resep({
    required this.nama,
    required this.harga,
    required this.tutorial,
    required this.image,
    this.isFavorite = true,
    this.isOrdered = true,
  });
}

List<Resep> dataMakanan= [
  Resep(
    nama: 'Campor Sumenep',
    tutorial: 'Campor sebenarnya merupakan sebuah hidangan yang mirip seperti sajian soto, namun campor dihidangkan dengan kuah santan kelapa yang memberikan cita rasa gurih. Dalam satu mangkuk campor, kamu bisa menemukan berbagai bahan makanan, mulai dari lontong, singkong, daun bawang, mie soun, serta tulang muda sapi. Selain disiram kuah santan kelapa, campor juga diberi tambahan bumbu kacang serta bawang goreng. Bagi kamu yang menyukai pedas, kamu juga bisa menambahkan cabai kedalam campor. Campor biasa menjadi hidangan yang disantap sebagai sarapan di pagi hari dan disajikan dalam keadaan hangat.',
    harga: 'Rp 10.000',
    image: 'assets/images/Campor.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Kaldu Kokot',
    tutorial: 'Kaldu kokot juga sering disebut dengan kaldu kikil, karena menggunakan bahan pelengkap berupa kikil sapi. Kaldu pada sajian kaldu kokot ini terbuat dari kacang hijau atau kedelai yang dimasak dengan cara direbus kemudian disajikan dengan daging bagian bawah dari sapi dengan daging kikilnya yang masih menempel. Tekstur kikil pada kaldu kokot ini juga terasa sangat empuk dengan cita rasa kaldunya yang meresap sampai ke serat daging hingga tulang. Kaldu kokot juga disajikan dengan tambahan bumbu kacang yang diberi petis khas Madura. Kaldu kokot juga biasa disantap dengan tambahan lontong atau kroket singkong.',
    harga: 'Rp 15.000',
    image: 'assets/images/Kaldu_Kokot.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Nasi Romi',
    tutorial: 'Sajian nasi romi khas Sumenep ini sekilas mirip dengan sajian nasi uduk yang ada di berbagai daerah. Nasi romi merupakan kuliner berupa nasi yang dimasak dengan menggunakan santan dan tambahan garam sehingga membuat nasi memiliki cita rasa yang gurih. Setelah matang, nasi romi biasa disajikan dengan abon sapi dan irisan telur dadar. Selain abon, nasi romi juga bisa dihidangkan dengan daging sapi yang disuwir kasar. Nasi romi juga lebih nikmat disantap dengan tambahan sambal petis ikan khas pulau Madura yang terbuat dari cabai rawit dan terasi. Para masyarakat Sumenep biasa menyantap nasi romi sebagai menu sarapan.',
    harga: 'Rp 15.000',
    image: 'assets/images/Nasi_Romi.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Apen Manis',
    tutorial: 'Apen Manis merupakan jajanan tradisional khas Sumenep yang sudah cukup legendaris. Dari bentuknya, apen manis memiliki bentuk yang mirip dengan kue serabi. Namun apen manis terbuat dari bahan dasar tepung beras. Adonan tepung beras ini memiliki rasa yang tawar. Sementara rasa manis dari cemilan ini berasal dari kuahnya. Kuah apen manis terbuat dari santan dan gula merah yang akan disiramkan pada adonan apen yang sudah matang. Cara memasak apen manis ini juga masih menggunakan cara tradisional, yaitu dengan memanggang adonan apen di atas wajan kecil yang terbuat dari tanah liat dan dipanggang menggunakan tungku kayu bakar yang membuatnya memiliki aroma khas.',
    harga: 'Rp 10.000',
    image: 'assets/images/Apen_Manis.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Soto Sabrang',
    tutorial: 'Ada banyak varian menu soto yang berasal dari berbagai daerah di Indonesia. Bagi kamu pecinta soto, kamu harus mencoba soto khas Sumenep yang bernama soto sabreng. Nama soto sabreng diambil dari bahan pelengkap soto ini yaitu irisan ketela pohon yang dalam bahasa Madura disebut sabreng. Soto sabreng juga memiliki ciri khas kuah dengan cita rasa kaldu yang kental. Saat disajikan, kuah soto akan disajikan terpisah dari mangkuk yang berisi bahan-bahan soto dan terdiri dari irisan lontong dan ketela pohon. Di atas irisan lontong dan ketela pohon tersebut kemudian akan ditambahan soun putih dan kemudian disiram dengan bumbu kacang serta ditaburi bawang goreng dan kecambah goreng.',
    harga: 'Rp 20.000',
    image: 'assets/images/Soto_Sabrang.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Kolak Pattola',
    tutorial: 'Kolak pattola merupakan kuliner khas Sumenep yang banyak dijumpai ketika bulan Ramadhan. Pattola sendiri merupakan sejenis kue basah yang terbuat dari tepung beras dan dibentuk seperti kerupuk. Tepung beras yang dikukus ini akan memiliki tekstur kenyal dan memiliki ciri khas warnanya yang berwarna-warni.',
    harga: 'Rp 10.000',
    image: 'assets/images/Kolak_Pattola.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Soto Selingkuh',
    tutorial: 'Sajian soto unik lainnya yang berasal dari Sumenep adalah soto selingkuh. Kuliner ini disebut dengan soto selingkuh karena terbuat dari perpaduan kuah soto babat dengan rujak khas Sumenep. Perpaduan dua kuliner ini akan memberikan cita rasa yang unik dan lezat dengan paduan cita rasa gurih, pedas, dan segar.Bahan-bahan yang digunakan dalam rujak diantaranya adalah kacang tanah, pisang biji muda, petis ikan, dan petis daging yang akan dicampurkan dengan kuah soto babat dan ditambahkan cingur, tahu, lontong, sayur, singkong, dan aneka buah-buahan. Sajian soto selingkuh juga akan dilengkapi dengan tambahan taburan kacang putih yang digoreng dengan campuran gula.',
    harga: 'Rp 20.000',
    image: 'assets/images/Soto_Selingkuh.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Jubada',
    tutorial: 'Jubada atau terkadang disebut jubede merupakan camilan legendaris khas Sumenep yang sudah ada sejak lama. Jubada memiliki cita rasa yang manis karena terbuat dari sisa proses pembuatan gula aren yaitu air nira. Selain air nira, jubada juga dibuat dengan tambahna bahan-bahan lain seperti tepung jagung, tepung tapioka, dan gula pasir. Tepung dan air nira akan direbus dalam waktu selama tiga jam. Adonan tepung dan air nira tersebut kemudian akan didinginkan dan dikeringkan di bawah sinar matahari. Proses pengeringan menggunakan sinar matahari ini membutuhkan waktu selama dua hari. Jubada akan dibentuk dengan ukuran kecil dan diikat menggunakan pelepah daun aren sebagai tali.',
    harga: 'Rp 10.000',
    image: 'assets/images/Jubada.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Man Reman',
    tutorial: 'Kuliner dengan nama yang cukup unik ini adalah camilan yang terbuat dari bahan-bahan seperti tepung beras, santan, dan gula merah. Man reman berbentuk bulat lebar seperti kerupuk dengan gula merah di bagian atasnya. Man reman memiliki tekstur yang renyah dengan cita rasanya yang manis. Man reman merupakan salah satu kuliner khas Sumenep yang cukup terkenal dan sering menjadi pilihan oleh-oleh para wisatawan yang berkunjung. Kuliner ini juga banyak dijual di toko pusat perbelanjaan oleh-oleh di daerah Sumenep. Selain menjadi oleh-oleh, man reman juga banyak ditemui pada bulan Ramadhan dan menjelang idul fitri.',
    harga: 'Rp 10.000',
    image: 'assets/images/Man_Reman.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
  Resep(
    nama: 'Pentol Gape',
    tutorial: 'Kuliner pentol Gape dibuat dari bahan-bahan seperti tepung terigu, ikan air laut, bahan penyedap, garam, dan sedikit merica untuk menambah rasa gurih. Sudah terkenal sejak dahulu sebagai kuliner pinggir jalan yang dicari oleh banyak orang, termasuk para wisatawan. Daya tarik dari makanan ini berasal dari proses penyajian yang menggunakan besi untuk menusuk pentol. Hal itu membuat pentol Gape jadi lebih cepat matang, dan lebih cepat disajikan kepada pelanggan.',
    harga: 'Rp 15.000',
    image: 'assets/images/Pentol_Gape.jpg',
    isFavorite: true,
    isOrdered: true,
  ),
];

