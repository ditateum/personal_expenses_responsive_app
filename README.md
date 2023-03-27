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