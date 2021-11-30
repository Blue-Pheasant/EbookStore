<?php
class PaymentsController extends BaseController {
    
    public function __CONSTRUCT (){}
    
    public function Index () {
        $model = Payment::GetAllPayments();
        parent::RenderPage(
            'Payments', 
            'view/shared/dtadmin/layout.php', 
            'view/payments/payments.php',
            $model
        );
    }

    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Payment::GetPaymentById($id);
            $model->Delete();
            parent::RedirectToController('payments');
        } 
    }

    public function Details () {
        $id = (int)$_REQUEST['id'];
        $model = Payment::GetPaymentById($id);
        parent::RenderPage(
            'Payments',
            'view/shared/dtadmin/layout.php', 
            'view/payments/details.php',
            $model
        );
    }
}

?>