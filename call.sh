#!/bin/bash
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
echo "================================================="
echo "== ╦ ╦┌─┐┌─┐┬┌─┌─┐┬─┐  ┬┌┐┌┌┬┐┌─┐┌┐┌┌─┐┌─┐┬┌─┐ =="
echo "== ╠═╣├─┤│  ├┴┐├┤ ├┬┘  ││││ │││ ││││├┤ └─┐│├─┤ =="
echo "== ╩ ╩┴ ┴└─┘┴ ┴└─┘┴└─  ┴┘└┘─┴┘└─┘┘└┘└─┘└─┘┴┴ ┴ =="
echo "================================================="
echo selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/call.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *Kesalahan* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
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
        cek_target=`curl -s $get_url/call.php?nomor=$target`
        echo -e $cek_target
    else
        echo Kesalahan, silahkan coba lagi
    fi
fi
