# engineer-desing
1-Giriş
Proje kapsamında istenilen fonksiyo-nellik olan fpga ve ultrasonik sensör kullanarak engelden kaçan araç. Gü-nümüzde arabalarda kullanılan acil fren sistemi ve otonom park sistemibu uygulamanın gelişmiş versiyonlarıdır. Yapılan proje başlangıç seviyesinde otonom sistemler ve araçlar projesidir. Proje kapsamında yapılan çalışmalar sonraki bölümlerde açıklanmıştır.
2-PROJE KAPSAMINDA YAPILAN ÇALIŞMALAR
Proje kapsamında istenilen fonsiyo-nellik araçta bulunan 3 adet ultrasonik sensörden gelen değerlere göre engeli algılayarak yön değiştirmesidir. Bu projede 3 adet ultrasonik sensör kullanılmıştır. 120 derecelik bi açının taranması hedeflenmektedir. Ayrıca iki adet step motor ve bir adet servo motor kullanılacaktır. Step motorlar aracın hareketini ve dönmesini sağla-yacaktır. Çalışma prensibi ve projede kullanılan elmanlar alt bölümlerde detaylı olarak açıklanmıştır.
2.1 Projenin Çalışma Prensibi:
Projenin çalışma prensibi ultrasonik sensörle motor kontrolü denilebilir. Örneğin aracın tam karşısında ve sağ tarafında engel olsun aracın önünde ve sağ tarafında bulunan sensörlerden okunan değer belli bi mesafenin al-tında ise sol motoru durdurarak sağ tarafa dönmesi sağlanacaktır. Eğer her taraf kapalıysa araç sağa veya sola dönerek boş bir yön bulmalı ve o tarafa doğru hareket etmelidir. Sensörler engel algılamazsa yani engel yoksa iki motorda aynı hızda dönmeye devam edecektir. 
 2.2-Projede Kullanılan Mo-düllerin Çalışma Prensibi:
2.2.1 HC-SR04 ultrasonic sen-sor:

 
Şekil 2.1.1 HC-SR04 ultrasik sensör

HC-SR04 ses dalgalarını kullanarak mesafe ölçmeye yarayan bir modül-dür. Toplamda üzerinde 4 adet pin vardır. Bunlar GND, VCC, trig ve
echo pinleridir. Trig pini ses dalgası-nın göndermesiiçin gerekli olan lojik sinyalin geldiği giriş pinidir. Echo pini ise gönderilen ses dalgasının yansıma yanıtının sesöre ulaştığının bilgisini taşıyan lojik çıkış pinidir. Sensör gönderilen ses dalgasının geri dönü süresinin bilgisini verir. Bu sayede aradaki mesafede hesaplanabilir. 2-400cm arasında ölçümü 3mm hassasiyetle ölçebilmektedir.

 Şekil 2.1.2 HC-SR04 UltrasonikSensörÇa-lışma Şekli

 
Şekil 2.1.3 Trig pininden pals gönderilmesi durumunda sensörün çalışma şekli
2.2.2 Lojik Seviye Dönüştürü-cü: 
 
Şekil 2.1.4 lojik seviye dönüştürcü
Basys 3 Fpga 3.3V ile çalışır ve ultrasonik sensör modülü 5V ile çalıştığı için fpga ile üretilen lojik sinyalin 5V seviyesinde iletilmesi gerekmektedir ve tam tersi durumda yani sensörün yanıtınında 5V ‘tan 3.3V’a düşürülmesi gerekir. Bunun için lojik seviye dönüştürücü kullanılmak-tadır.  
Şekil 2.1.5 trig sinyalinin 3.3V-5V dönü-şümü
2.2.3 Servo Motor:
 
Şekil 2.1.6 servo motor

Servo motorun 3 adet pini bulunmaktadır. Bunlar ; VCC GND ve üretilen pwm sinyalinin gönderildiği pindir. Servo mo-torlar pwm sinyali ile çalışır. servo motor 20ms bir değer okumaktadır. Bu değerin uzunluğu motorun dönüş yönünü ve açısını belirlemektedir.
  Şekil 2.1.7 servo motor örnek pulse değerlerine göre açılar
2.2.4 Step Motor:
Step motor DC gücü hareket gücüne dönüştüren bir motordur. Step motora uygulanan uyarı sinyaline göre adım adım  hareket eder. Bu sinyal ne kadar sık gelirse step motor dönme hareketini o kadra hızlı yapacaktır. Şekil 2.1.8 de de görüldüğü gibi motorun iç yapısı anahtar-lama mantığı ile çalışmaktadır. Bu anah-tarlama motorun adım adım dönmesini sağlamaktadır. Hassas hız kontrol özelliği olduğunda dolayı projede DC motor kul-lanmak yerine step motor kullanılmıştır. Günümüzde konrol otomasyon alanında çok fazla kullanıomaktadır.
 
Şekil 2.1.8 step motor iç yapısı
2.3-Altium  çizimleri
Projede kullanılacak olan servo motor için kontrol kartı olarak pmod CON3 ve step motor için pmod STEP seçilmiştir. Bu modüllerin pcb tasarımı yapılmıştır.
 
Şekil 2.3.1 pmod con3 altium şematiği
 
Şekil 2.3.2 pmod con3 altium PCB çizim
 
Şekil 2.3.3 pmod step altium şematik çizim
 
Şekil 2.3.4 pmod step altium PCB çizimi
