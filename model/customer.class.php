<?php
class Customer {

  /* Mapped */
  
  private $id_customer;
  public function getId () { return $this->id_customer; }
  private function setId ($id_customer) { $this->id_customer = $id_customer; }

  private $f_name; 
  private $m_name;
  private $l_name;
  public function getName() { return $this->f_name . ' ' . $this->m_name . ' ' . $this->l_name; }

  private $sex; 
  public function getSex () { return $this->sex; }
  public function setSex ($sex) { $this->sex = $sex; }

  private $date_of_birth; 
  public function getDateOfBirth () { return $this->date_of_birth; }
  public function setDateOfBirth ($date_of_birth) { $this->date_of_birth = $date_of_birth; }

  private $address_customer; 
  public function getAddress () { return $this->address_customer; }
  public function setAddress ($address_customer) { $this->address_customer = $address_customer; }

  private $phone_customer; 
  public function getPhone () { return $this->phone_customer; }
  public function setPhone ($phone_customer) { $this->phone_customer = $phone_customer; }

  private $email_customer;
  public function getEmail () { return $this->email_customer; }
  public function setEmail ($email_customer) { $this->email_customer = $email_customer; }

  private $username_customer;
  public function getUserName() { return $this->username_customer; }
  public function setUserName($username_customer) { $this->username_customer = $username_customer; }

  private $password_customer;
  public function getPassWord() { return $this->password_customer; }
  public function setPassWord($password_customer) { $this->password_customer = $password_customer; }

  public function __construct(
    $f_name = '',
    $m_name = '',
    $l_name = '',
    $sex = '',
    $date_of_birth = '',
    $address_customer = '',
    $phone_customer = '',
    $email_customer = '',
    $username_customer = '',
    $password_customer = '',
    $id_customer = ''
  ) {
    $this->f_name = $f_name;
    $this->m_name = $m_name;
    $this->l_name = $l_name;
    $this->sex = $sex;
    $this->date_of_birth = $date_of_birth;
    $this->address_customer = $address_customer;
    $this->phone_customer = $phone_customer;
    $this->email_customer = $email_customer;
    $this->username_customer = $username_customer;
    $this->password_customer = $password_customer;
    $this->id_customer = $id_customer;
  }

  public static function GetCustomerById ($id_customer) {
    $model = null;
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT * FROM `customer` WHERE `id_customer` = ?');
    $statement->bind_param('s', $id_customer);
    $statement->bind_result($f_name, $m_name, $l_name, $sex, $date_of_birth, $address_customer, $phone_customer, $email_customer, $username_customer, $password_customer, $id_customer);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new Customer($f_name, $m_name, $l_name, $sex, $date_of_birth, $address_customer, $phone_customer, $email_customer, $username_customer, $password_customer, $id_customer);
      }
    }
    return $model;
  }

  public static function GetAllCustomers () {
    $models = [];
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('SELECT `f_name`, `m_name`, `l_name`, `sex`, `date_of_birth`, `address_customer`, `phone_customer`, `email_customer`, `username_customer`, `password_customer`, `id_customer` FROM `customer`');
    $statement->bind_result($f_name, $m_name, $l_name, $sex, $date_of_birth, $address_customer, $phone_customer, $email_customer, $username_customer, $password_customer, $id_customer);
    if ($statement->execute()) {
      while ($statement->fetch()) {
        $model = new Customer($f_name, $m_name, $l_name, $sex, $date_of_birth, $address_customer, $phone_customer, $email_customer, $username_customer, $password_customer, $id_customer);
        array_push($models, $model);
      }
    }
    return $models;
  }

  public function Delete () {
    $db = (new DataBase())->CreateConnection();
    $statement = $db->prepare('DELETE FROM `customer` WHERE `id_customer` = ?');
    $statement->bind_param('s', $this->id_customer);
    $statement->execute();
  }

}
?>