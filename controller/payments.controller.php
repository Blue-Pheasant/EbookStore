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
    
    public function Edit () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new Payment(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity'],
                $_REQUEST['id']
            );
            $model->Edit();
            parent::RedirectToController('payments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Payment::GetPaymentById($id);
            parent::RenderPage(
                'Payments',
                'view/shared/dtadmin/layout.php', 
                'view/payments/edit.php',
                $model
            );
        }
    }

    public function Create () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new Payment(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity']
            );
            $model->Create();
            parent::RedirectToController('payments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            parent::RenderPage(
                'Payments',
                'view/shared/dtadmin/layout.php', 
                'view/payments/create.php'
            );
        }
    }

    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = (int)$_REQUEST['id'];
            $model = Payment::GetPaymentById($id);
            $model->Delete();
            parent::RedirectToController('payments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Payment::GetPaymentById($id);
            parent::RenderPage(
                'Payments',
                'view/shared/dtadmin/layout.php', 
                'view/payments/delete.php',
                $model
            );
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