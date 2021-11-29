<?php
class Payment {

  /* Mapped */
  
  private $id_payment;
  public function getId () { return $this->id_payment; }
  private function setId ($id_payment) { $this->id_payment = $id_payment; }

  public function __construct($id_payment = '') 
  {
    $this->id_payment = $id_payment;
  }

  public static function GetPaymentById ($id_payment) {
    $model = null;
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT `id_payment` FROM `payment` WHERE `id_payment` = ?');
    $statement->bind_param('s', $id_payment);
    $statement->bind_result($id_payment);
    if ($statement->execute()) {
      while ($row = $statement->fetch()) {
        $model = new Payment($id_payment);
      }
    }
    return $model;
  }

  public static function GetAllPayments () {
    $models = [];
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT `id_payment` FROM `payment`');
    $statement->bind_result($id_payment);
    if ($statement->execute()) {
      while ($row = $statement->fetch()) {
        $model = new Payment($id_payment);
        array_push($models, $model);
      }
    }
    return $models;
  }

  public function Create () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('INSERT INTO `payment`(`id_payment`) VALUES (?)');
    $statement->bind_param(
      's',
      $this->id_payment
    );
    $statement->execute();  
  }

  public function Edit () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare(
      'UPDATE `payment` SET 
        `id_payment` = ?
      WHERE `id_payment` = ?'
    );
    $statement->bind_param(
      's',
      $this->id_payment
    );
    $statement->execute();
  }

  public function Delete () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('DELETE FROM `payment` WHERE `id_payment` = ?');
    $statement->bind_param('s', $this->id);
    $statement->execute();
  }

  

}
?>