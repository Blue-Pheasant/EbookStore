<?php
class CreditCard {

  /* Mapped */
  
  private $number_card;
  public function getNumberCard () { return $this->number_card; }
  private function setNumberCard ($number_card) { $this->number_card = $number_card; }

  private $n_bank; 
  public function getNameBank () { return $this->n_bank; }
  public function setNameBank ($n_bank) { $this->n_bank = $n_bank; }

  private $n_owner; 
  public function getNameOwner () { return $this->n_owner; }
  public function setNameOwner ($n_owner) { $this->n_owner = $n_owner; }

  private $n_branch; 
  public function getNameBranch () { return $this->n_branch; }
  public function setNameBranch ($n_branch) { $this->n_branch = $n_branch; }

  private $id_customer; 
  public function getIdCustomer () { return $this->id_customer; }
  public function setIdCustomer ($id_customer) { $this->id_customer = $id_customer; }

  private $start_time; 
  public function getStartTime () { return $this->start_time; }
  public function setStartTime ($start_time) { $this->start_time = $start_time; }

  private $end_time; 
  public function getEndTime () { return $this->end_time; }
  public function setEndTime ($end_time) { $this->end_time = $end_time; }

  /* No-mapped */

  public function __construct(
    $number_card = '',
    $n_bank = '',
    $n_owner = '',
    $n_branch = '',
    $id_customer = '',
    $start_time = '',
    $end_time = ''
  ) {
    $this->number_card = $number_card;
    $this->n_bank = $n_bank;
    $this->n_owner = $n_owner;
    $this->n_branch = $n_branch;
    $this->id_customer = $id_customer;
    $this->start_time = $start_time;
    $this->end_time = $end_time;
  }

  public static function GetCreditCardById ($number_card) {
    $model = null;
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT `number_card`, `n_bank`, `n_owner`, `n_branch`, `id_customer`, `start_time`, `end_time` FROM `credit_card` WHERE `number_card` = ?');
    $statement->bind_param('s', $number_card);
    $statement->bind_result($number_card, $n_bank, $n_owner, $n_branch, $id_customer, $start_time, $end_time);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new CreditCard($number_card, $n_bank, $n_owner, $n_branch, $id_customer, $start_time, $end_time);
      }
    }
    return $model;
  }

  public static function GetAllCreditCards () {
    $models = [];
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT `number_card`, `n_bank`, `n_owner`, `n_branch`, `id_customer`, `start_time`, `end_time` FROM `credit_card`');
    $statement->bind_result($number_card, $n_bank, $n_owner, $n_branch, $id_customer, $start_time, $end_time);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new CreditCard($number_card, $n_bank, $n_owner, $n_branch, $id_customer, $start_time, $end_time);
        array_push($models, $model);
      }
    }
    return $models;
  }

  public function Delete () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('DELETE FROM `credit_card` WHERE `number_card` = ?');
    $statement->bind_param('s', $this->number_card);
    $statement->execute();
  }

}
?>