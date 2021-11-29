<?php
class CardPayment {

  /* Mapped */
  
  private $id;
  public function getId () { return $this->id; }
  private function setId ($id) { $this->id = $id; }

  private $number_card; 
  public function getCode () { return $this->number_card; }
  public function setCode ($number_card) { $this->number_card = $number_card; }

  /* No-mapped */

  public function __construct(
    $id = '',
    $number_card = '',
  ) {
        $this->id = $id;
        $this->number_card = $number_card;
    }

  public static function GetCardPaymentById ($id) {
    $model = null;
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT * FROM `card_payment` WHERE `id_payment` = ?');
    $statement->bind_param('s', $id);
    $statement->bind_result($id, $number_card);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new CardPayment($id, $number_card);
      }
    }
    return $model;
  }

  public static function GetAllCardPayments () {
    $models = [];
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT * FROM `card_payment`');
    $statement->bind_result($id, $number_card);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new CardPayment($id, $number_card);
        array_push($models, $model);
      }
    }
    return $models;
  }

  public function Create () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('INSERT INTO `card_payment`(`id_payment`, `number_card`) VALUES (?, ?)');
    $statement->bind_param(
      'ss',
      $this->id,
      $this->number_card
    );
    $statement->execute();  
  }

  public function Edit () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare(
      'UPDATE `card_payment` SET 
        `number_card` = ?
      WHERE `id_payment` = ?'
    );
    $statement->bind_param(
      'ss',
      $this->id,
      $this->number_card
    );
    $statement->execute();
  }

  public function Delete () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('DELETE FROM `card_payment` WHERE `id_payment` = ?');
    $statement->bind_param('s', $this->id);
    $statement->execute();
  }
}
?>