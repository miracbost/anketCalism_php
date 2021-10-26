<?php
 $servername="localhost";
    $username="root";
    $password="";
    $dbname="test";
    $connect=new mysqli($servername,$username,$password,$dbname);
    if($connect->connect_error)
    {
        die("Bağlatı Hatası");
    }

    else echo "<script> 
    alert('Bağlantı kuruldu')
    </script>";
    if(isset($_POST["buton"]))
    {
    $title=$_POST["y"];
    $number=$_POST["x"];
    $hstore=array('');
    for($i=1;$i<=$number;$i++)
  {
      if($i>0)
      {
        $option=$_POST["option_$i"];
        if($i<=$number)
        {
          
            $hstore[]=$option;
        }
      }
   
  } 
  unset($hstore[0]);
  
 $answer=json_encode($hstore, JSON_UNESCAPED_UNICODE);
 echo $answer;
    $ekle="INSERT INTO base(survetitle, survenumber, surveyanswer) VALUES ('".$title."','".$number."','".$answer."')";
    if($connect->query($ekle)===TRUE)
    {
    echo "eklendi";
    }
    else{
     echo "kayıt yapılmadı";
    } 

    }
?>
