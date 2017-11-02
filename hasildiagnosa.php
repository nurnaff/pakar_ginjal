<html>
<body>
<?php 
include("koneksi.php");
$query=mysql_query("select count(*) as jum from penyakit",$conn);
$hasil=mysql_fetch_assoc($query);
$jum=$hasil['jum'];
$jum=$jum+1;
for($i=1;$i<$jum;$i++) {
 $nil=mysql_query("select * from penyakit where no='$i'",$conn);
 $hnil=mysql_fetch_array($nil);
 $nilcf[$i]=$hnil["nilai"];
 //echo $nilcf[$i];
}
$g1[0]=$_POST['gj1'];
$g1[1]=$_POST['gj2'];
$g1[2]=$_POST['gj3'];
$g1[3]=$_POST['gj4'];
$g1[4]=$_POST['gj5'];
$g1[5]=$_POST['gj6'];
$g1[6]=$_POST['gj7'];
$g1[7]=$_POST['gj8'];
$min=$g1[0];
for($i=0;$i<8;$i++) {
  if($g1[$i]<$min) {$min=$g1[$i]; }
}

$g2[0]=$_POST['gj9'];
$g2[1]=$_POST['gj10'];
$g2[2]=$_POST['gj11'];
$g2[3]=$_POST['gj12'];
$g2[4]=$_POST['gj13'];
$g2[5]=$_POST['gj14'];
$min1=$g2[0];
for($i=0;$i<6;$i++) {
  if($g2[$i]<$min1) {$min1=$g2[$i]; }
}

$g3[0]=$_POST['gj12'];
$g3[1]=$_POST['gj15'];
$g3[2]=$_POST['gj16'];
$g3[3]=$_POST['gj17'];
$g3[4]=$_POST['gj18'];
$g3[5]=$_POST['gj19'];
$g3[6]=$_POST['gj20'];
$min2=$g3[0];
for($i=0;$i<7;$i++) {
  if($g3[$i]<$min2) {$min2=$g3[$i]; }
}

$g4[0]=$_POST['gj21'];
$g4[1]=$_POST['gj22'];
$g4[2]=$_POST['gj23'];
$min3=$g4[0];
for($i=0;$i<3;$i++) {
  if($g4[$i]<$min3) {$min3=$g4[$i]; }
}

$g5[0]=$_POST['gj24'];
$g5[1]=$_POST['gj25'];
$g5[2]=$_POST['gj26'];
$g5[3]=$_POST['gj27'];
$min4=$g5[0];
for($i=0;$i<4;$i++) {
  if($g5[$i]<$min4) {$min4=$g5[$i]; }
}

$g6[0]=$_POST['gj26'];
$g6[1]=$_POST['gj28'];
$g6[2]=$_POST['gj29'];
$g6[3]=$_POST['gj30'];
$g6[4]=$_POST['gj31'];
$min5=$g6[0];
for($i=0;$i<5;$i++) {
  if($g6[$i]<$min5) {$min5=$g6[$i]; }
}

$g7[0]=$_POST['gj32'];
$g7[1]=$_POST['gj33'];
$g7[2]=$_POST['gj34'];
$g7[3]=$_POST['gj35'];
$g7[4]=$_POST['gj36'];
$g7[5]=$_POST['gj37'];
$g7[6]=$_POST['gj38'];
$min6=$g7[0];
for($i=0;$i<7;$i++) {
  if($g7[$i]<$min6) {$min6=$g7[$i]; }
}

// $g8[0]=$_POST['gj13'];
// $g8[1]=$_POST['gj14'];
// $g8[2]=$_POST['gj32'];
// $g8[3]=$_POST['gj33'];
// $min7=$g8[0];
// for($i=0;$i<4;$i++) {
  // if($g8[$i]<$min7) {$min7=$g8[$i]; }
// }

// $g9[0]=$_POST['gj15'];
// $g9[1]=$_POST['gj16'];
// $g9[2]=$_POST['gj34'];
// $g9[3]=$_POST['gj35'];
// $min8=$g9[0];
// for($i=0;$i<4;$i++) {
  // if($g9[$i]<$min8) {$min8=$g9[$i]; }
// }

$cf[0]=$nilcf[1]*$min;
$cf[1]=$nilcf[2]*$min1;
$cf[2]=$nilcf[3]*$min2;
$cf[3]=$nilcf[4]*$min3;
$cf[4]=$nilcf[5]*$min4;
$cf[5]=$nilcf[6]*$min5;
$cf[6]=$nilcf[7]*$min6;
// $cf[7]=$nilcf[8]*$min7;
// $cf[8]=$nilcf[9]*$min8;

//echo "<br>";
//echo $cf1;
//echo "<br>";
//echo $cf2;
//echo "<br>";
//echo $cf3;
//echo "<br>";
//echo $cf4;
$maks=0;
for($i=0;$i<7;$i++) {
  if($cf[$i]>$maks) {$maks=$cf[$i];
  $ind=$i; 
  $no=$ind+1;  }
}
$hasilkonsul=mysql_query("select * from penyakit where no='$no'",$conn);
$hasilakhir=mysql_fetch_array($hasilkonsul);
echo "Hasil Diagnosa Penyakit pada Ginjal";
echo "<br>";
echo $hasilakhir["nama"];
echo "<br>";
echo "Nilai CF=".$maks;
echo "<br>";
echo "Nilai Presentasi Keyakinan=".$maks*100;
echo "%";

?>

<br>
<br>
<a href='diagnosa.php'> Mengulang Diagnosa Penyakit Ginjal </a>
<br>
<a href='index.php'> Pilih Menu Utama </a>
</body>
</html>