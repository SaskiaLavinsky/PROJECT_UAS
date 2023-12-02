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