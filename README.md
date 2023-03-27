# Personal Expenses
History
--
Beberapa tahun yang lalu, saya mencoba membeli course flutter by Maximilian Schwarzmüller di Udemy. Namun saya belum mempelajarinya. Course ini sudah jadul, jadi banyak error dan deprecatednya. Sehingga butuh waktu extra lebih jika ingin mempelajarinya.

Beruntung saya sebelumnya sudah memiliki fundamental flutter, jadi tidak terlalu payah untuk mengikuti course ini. Dan juga saya ingin menuliskan ulang course ini dengan versi flutter 3.7 (versi saat saya menulis ini) dan akan mencoba mencatat poin-poin utamanya, sehingga dapat memberikan manfaat pada diri sendiri maupun orang yang membaca repo saya ini.

Bagaimana cara mendapatkan width dan/atau height suatu device dengan MediaQuery?
--
Jawabannya kalian dapat menggunakan MediaQuery yang di import dari Material:

**Mendapatkan Height**
`MediaQuery.of(context).size.height`
**Mendapatkan Width**
`MediaQuery.of(context).size.width`

Kita juga dapat melakukan presentase, contoh 20% dari tinggi device:
`MediaQuery.of(context).size.height * 0.2`
ini presentasi dari 0 s.d. 1, dimana 1 merepresentasikan 100%.

Ketika kita menggunakan ``MediaQuery.of(context).size.height` maka yang didapatkan adalah tinggi keseluruhan device. Maka jika kita ingin mendapatkan tinggi body pada MaterialApp kita dapat menggunakan perhitungan berikut:

```
final deviceHeight = MediaQuery.of(context).size.height;
final appBarHeight = AppBar().preferredSize.height;
final statusBarHeight = MediaQuery.of(context).padding.top;

// Sehingga:
final bodyHeight = deviceHeight - appBarHeight - statusBarHeight;
```

## LayoutBuilder
adalah salah satu widget di Flutter yang memungkinkan kita untuk membangun tata letak (layout) dinamis dengan mengakses informasi tentang batas (constraints) dan ukuran (size) dari widget yang mengelilinginya. Dengan menggunakan `LayoutBuilder`, kita dapat mengatur tampilan widget yang responsif terhadap perubahan ukuran layar atau orientasi layar.

`LayoutBuilder` bekerja dengan cara menempatkan child widget di dalam LayoutBuilder dan memberikan informasi tentang batas dan ukuran yang tersedia untuk child widget. Kemudian, child widget dapat diatur berdasarkan batas dan ukuran yang diberikan. `LayoutBuilder` akan mengeksekusi fungsi yang diberikan oleh pengembang setiap kali ukuran layar atau orientasi berubah, sehingga widget anak dapat ditempatkan ulang sesuai dengan ukuran layar yang baru.

```
LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      child: Text('Ukuran layar saat ini adalah ${constraints.maxWidth} x ${constraints.maxHeight}.'),
    );
  },
);
```
 