<?php
class CardPaymentsController extends BaseController {
    
    public function __CONSTRUCT (){}
    
    public function Index () {
        $model = CardPayment::GetAllCardPayments();
        parent::RenderPage(
            'CardPayments', 
            'view/shared/dtadmin/layout.php', 
            'view/CardPayments/CardPayments.php',
            $model
        );
    }
    
    public function Edit () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new CardPayment(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity'],
                $_REQUEST['id']
            );
            $model->Edit();
            parent::RedirectToController('CardPayments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CardPayment::GetCardPaymentById($id);
            parent::RenderPage(
                'CardPayments',
                'view/shared/dtadmin/layout.php', 
                'view/CardPayments/edit.php',
                $model
            );
        }
    }

    public function Create () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new CardPayment(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity']
            );
            $model->Create();
            parent::RedirectToController('CardPayments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            parent::RenderPage(
                'CardPayments',
                'view/shared/dtadmin/layout.php', 
                'view/CardPayments/create.php'
            );
        }
    }

    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = (int)$_REQUEST['id'];
            $model = CardPayment::GetCardPaymentById($id);
            $model->Delete();
            parent::RedirectToController('CardPayments');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CardPayment::GetCardPaymentById($id);
            parent::RenderPage(
                'CardPayments',
                'view/shared/dtadmin/layout.php', 
                'view/CardPayments/delete.php',
                $model
            );
        }
    }

    public function Details () {
        $id = (int)$_REQUEST['id'];
        $model = CardPayment::GetCardPaymentById($id);
        parent::RenderPage(
            'CardPayments',
            'view/shared/dtadmin/layout.php', 
            'view/CardPayments/details.php',
            $model
        );
    }
}

?>