<?php
class CreditCardsController extends BaseController {
    
    public function __CONSTRUCT (){}
    
    public function Index () {
        $model = CreditCard::GetAllCreditCards();
        parent::RenderPage(
            'CreditCards', 
            'view/shared/dtadmin/layout.php', 
            'view/creditcards/creditcards.php',
            $model
        );
    }
  
    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CreditCard::GetCreditCardById($id);
            $model->Delete();
            parent::RedirectToController('credits');
        } 
    }
}

?>