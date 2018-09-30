<?php
 
include_once('database.php');

header('Content-Type: application/json');
$produkt;
//hämtar alla produkter
if($_GET == NULL){
    $produkt = 1;
}
//hämtar alla produkter med ett kategori id
if($_GET['categoryID'] && is_numeric($_GET['categoryID'])){
    $produkt = "products.categoryID = " . $_GET['categoryID'];
}
//hämtar en produkt med ett specefikt id
if($_GET['id'] && is_numeric($_GET['id'])){
    $produkt = "products.ID = " . $_GET['id'];
}
//sql querryn
$stmt = $dbh->prepare("
SELECT products.ID, products.name, products.weight, products.price, categories.categoryName
FROM products
JOIN categories
ON products.categoryID = categories.ID
WHERE " . $produkt);

//kör $stmt och get ett fel medelande om något blev fel
if($stmt->execute() == false){
    echo "Något gick snett";
}else{
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

?>