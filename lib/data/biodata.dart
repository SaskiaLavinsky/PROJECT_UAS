import 'package:redwallet/data/satu.dart';

List<money> satu() {
  money ovo = money();
  ovo.buy =true;
  ovo.fee ='-Rp 50.000';
  ovo.image = 'ovo.jpg';
  ovo.name ='Top-Up/Ovo';
  ovo.time ='today';
  money dana = money();
  dana.buy =true;
  dana.fee ='-Rp 50.000';
  dana.image = 'dana.jpg';
  dana.name ='Top-Up/Dana';
  dana.time ='today';
  money spay = money();
  spay.buy =true;
  spay.fee ='-Rp 50.000';
  spay.image = 'spay.jpg';
  spay.name ='Top-Up/Shopeepay';
  spay.time ='today';
  money qris = money();
  qris.buy =true;
  qris.fee ='-Rp 50.000';
  qris.image = 'qr.png';
  qris.name ='Pay/Qris';
  qris.time ='today';
  money upwork = money();
  upwork.name ='Salary';
  upwork.fee='+Rp 12.000.000';
  upwork.time='Nov 1,2023';
  upwork.image='gr.png';
  upwork.buy =false;
  money transfer = money();
  transfer.buy = true;
  transfer.fee = '-Rp 300.000';
  transfer.image = 'tfan.jpg';
  transfer.name = 'transfer';
  transfer.time ='today';  
  money transfers = money();
  transfers.buy = true;
  transfers.fee = '-Rp 310.000';
  transfers.image = 'tfan.jpg';
  transfers.name = 'transfer';
  transfers.time ='today';

  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '-Rp 250.000';
  starbucks.image = 'sb.png';
  starbucks.name = 'Starbucks';
  starbucks.time ='today';  

  money bk = money();
  bk.buy = true;
  bk.fee = '-Rp 150.000';
  bk.image = 'bk.png';
  bk.name = 'Burger King';
  bk.time ='today'; 
  
  money hnm = money();
  hnm.buy = true;
  hnm.fee = '-Rp 4.500.000';
  hnm.image = 'hnm.png';
  hnm.name = 'H&M';
  hnm.time ='today'; 

  return[ovo, dana, spay, qris, transfer,transfers, hnm,bk,starbucks, upwork,];
}

List<money> dua() {

  money upwork = money();
  upwork.name ='Salary';
  upwork.fee='+Rp 20.750.000';
  upwork.time='Nov 01,2023';
  upwork.image='gr.png';
  upwork.buy =false;

  money upwork1 = money();
  upwork1.name ='Salary';
  upwork1.fee='+Rp 20.750.000';
  upwork1.time='Oct 01,2023';
  upwork1.image='gr.png';
  upwork1.buy =false;

  money admin = money();
  admin.name ='Admin Fee';
  admin.fee='-Rp 10.000';
  admin.time='Nov 01,2023';
  admin.image='admin.jpg';
  admin.buy =true;
  money admin1 = money();
  admin1.name ='Admin Fee';
  admin1.fee='-Rp 10.000';
  admin1.time='Oct 01,2023';
  admin1.image='admin.jpg';
  admin1.buy =true;

  money transfer = money();
  transfer.buy = false;
  transfer.fee = '+Rp 12.000.000';
  transfer.image = 'tfan.jpg';
  transfer.name = 'transfer';
  transfer.time ='Nov 18,2023';  

  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '-Rp 2.250.000';
  starbucks.image = 'sb.png';
  starbucks.name = 'Starbucks';
  starbucks.time ='Nov 14,2023';  

  money converse = money();
  converse.buy = true;
  converse.fee = '-Rp 7.250.000';
  converse.image = 'cnvrse.jpg';
  converse.name = 'Converse';
  converse.time ='Oct 26,2023'; 
  
  money puma = money();
  puma.buy = true;
  puma.fee = '-Rp 5.550.000';
  puma.image = 'puma.jpg';
  puma.name = 'Puma';
  puma.time ='Nov 02,2023'; 

  money nike = money();
  nike.buy = true;
  nike.fee = '-Rp 15.750.000';
  nike.image = 'nike.jpg';
  nike.name = 'Nike';
  nike.time ='today'; 

  return[nike,transfer, starbucks, puma, admin, upwork,converse,admin1,upwork1];
}