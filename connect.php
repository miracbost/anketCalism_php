<?php
$sayı=rand(0,20000);
$sayıv2=rand(0,23000);
    $servername="localhost";
    $username="root";
    $password="";
    $dbname="test";
    $connect=new mysqli($servername,$username,$password,$dbname);
    $connect->set_charset("utf8");
    if($connect->connect_error)
    {
        die("Bağlatı Hatası");
    }
    
    if(isset($_POST["buton"]))
    {
        
    $title=$_POST["name"];
    if (empty($title)) {
            die("Başlık boş olamaz!!");
        }
    $question=$_POST["y"];
    if (empty($question)) {
        die("Soru Boş olamaz!!");
    }
    $count=$_POST["x"];
    
    {
    $hstore=array('');
    for($i=1;$i<=$count;$i++)
  {
      if($i>0)
      {
        $option=$_POST["option_$i"];
        if (empty($option)) {
            die("Cevapsız soru olamaz!!");
        }
        if($i<=$count)
        {
        $hstore[]=$option;
        }
      }  
  }              
    
    unset($hstore[0]); 

    $answers=json_encode($hstore, JSON_UNESCAPED_UNICODE);

    $ekle2="INSERT INTO survey_name(title,idS) VALUES ('".$title."','".$sayı."')";
    $ekle="INSERT INTO survey_questions(question_title,answer_count,answers,idS) VALUES ('".$question."','".$count."','".$answers."','".$sayı."')";
    if($connect->query($ekle)===TRUE)
    {
    //echo "eklendi";
    }
    else{
   //  echo "kayıt yapılmadı";
    } 
    if($connect->query($ekle2)===TRUE)
    {
    //echo "eklendi";
    }
    else{
    // echo "kayıt yapılmadı";
    } 
    if($connect->query($answers)===TRUE)
    {
    //echo "eklendi";
    }
    else{
    // echo "kayıt yapılmadı";
    } 
    }
    $sqlv2 ="SELECT * FROM survey_name ORDER BY idS ";
    $sql="SELECT * FROM survey_questions ORDER BY idQ ";
    $result2 = mysqli_query($connect, $sqlv2);
    $result = mysqli_query($connect, $sql);
    $dizi = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $dizi[] = $row; //cevaplar
    }
    print_r($row);
  // echo $dizi[0]["idS"];
    $diziv2 = array();
    while ($row2 = mysqli_fetch_assoc($result2)) {
        $diziv2[] = $row2; //anabaşlık
    }
    if(!empty($dizi[$sayı]))
    {
       // echo "adamol";
    }
    $sayı=$_GET['sayi'];
    if (empty($sayı)) {
     $sayı = 0;
    }
    if (empty($dizi[$sayı])) {
        echo "<script> 
    alert('Soru bulunamadı!!')
   </script>";
    }
    if ($sayı == 0) {
        echo '<script>
       $(document).ready(function(){
           myFunction();
          });
   </script>';
    }
} 