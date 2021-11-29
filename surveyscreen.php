<!doctype html>
<html lang="en">

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Hello, world!</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.0/jquery-ui.min.js"></script>
</head>

<body>
    <?php
    include("surveycode.php");
    $sayı = 0;
    
    if (empty($dizi[$sayı])) {
        echo '<div class="alert alert-danger">
        <strong>HATA!</strong> Anket sonu daha fazla soru bulunamadı.
      </div>';
    }
    if ($sayı == 0) {
        echo '<script>
       $(document).ready(function(){
           myFunction();
          });
   </script>';
    }
    ?>
    <div class="row">
        <div class="col-15 p-4 mb-8 my-6">
            <?php
            $kacsoruvar = $connect->query("SELECT COUNT(*) FROM survey_questions WHERE idS =" . $idv1);
            $sonuc3 = $kacsoruvar->fetch_assoc();
            foreach ($sonuc3 as $key => $cevap) {
            }
            echo '<div class="alert alert-success">
     <strong>Bilgilendirme!</strong> Bulunduğunuz Ankette ' . $cevap . ' adet soru bulunmakta lütfen soruları cevaplamadan geçmeyiniz!.
   </div>';
            ?>
            <h2 class="w3-container w3-top"><?php echo $diziv2[$sabr]["title"]; ?> </h2>
            <br>
            <?php
            $sql = "SELECT * FROM survey_questions WHERE idS =" . $idv1;
            $result = mysqli_query($connect, $sql);

            while ($sonuc2 = $result->fetch_assoc()) {
            ?>
            <h4 class="w3-container w3-top "><?php echo $dizi[$sayı]["question_title"];  ?> </h4>
            <br>
            <?php
            $idq = $dizi[$sayı]["idQ"];
            $json = $dizi[$sayı]["answers"];
            $obj = json_decode($json);
            foreach ($obj as $key => $lock) {
            ?>
                <form action="" method="GET">
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="radio" name="gridRadios<?php echo $idq; ?>" value="<?php echo $lock; ?>">
                        <label class="form-label">
                            <?php
                            print $lock;
                            ?>
                        </label>
                    </div>
                <?php
            }
            $userid = "123";
            if ($_GET['buton']) {
                $locsk = $_GET["gridRadios" . $idq];
                if ($locsk == null) {
                } else {
                    $ekleme = "INSERT INTO survey_user_answer(idS, idQ, userid, user_answer) VALUES ('" . $idv1 . "','" . $idq . "','" . $userid . "','" . $locsk . "')";
                    if ($connect->query($ekleme) === TRUE) {
                        // echo "eklendi";
                    } else {
                        echo "kayıt yapılmadı";
                    }
                }
            }
            $sayı++;
        }
                ?>
                <div>
                    <input type="submit" value="Kaydet" class="btn btn-danger mt-3" name="buton">
                </form>
        </div>
    </div>
    </div>
    </div>
    <script>
        function myFunction() {
            document.getElementById("buttonnone").disabled = true;
        }
    </script>
</body>

</html>