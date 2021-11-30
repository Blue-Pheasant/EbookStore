<?php
class CardPaymentsController extends BaseController {
    
    public function __CONSTRUCT (){}
    
    public function Index () {
        $model = CardPayment::GetAllCardPayments();
        parent::RenderPage(
            'CardPayments', 
            'view/shared/dtadmin/layout.php', 
            'view/cardpayments/cardpayments.php',
            $model
        );
    }
    
    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CardPayment::GetCardPaymentById($id);
            $model->Delete();
            parent::RedirectToController('cardpayments');
        }
    }
}

?>