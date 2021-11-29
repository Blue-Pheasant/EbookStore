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
    
    public function Edit () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new CreditCard(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity'],
                $_REQUEST['id']
            );
            $model->Edit();
            parent::RedirectToController('credits');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CreditCard::GetCreditCardById($id);
            parent::RenderPage(
                'CreditCards',
                'view/shared/dtadmin/layout.php', 
                'view/creditcards/edit.php',
                $model
            );
        }
    }

    public function Create () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new CreditCard(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity']
            );
            $model->Create();
            parent::RedirectToController('credits');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            parent::RenderPage(
                'CreditCards',
                'view/shared/dtadmin/layout.php', 
                'view/creditcards/create.php'
            );
        }
    }

    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = (int)$_REQUEST['id'];
            $model = CreditCard::GetCreditCardById($id);
            $model->Delete();
            parent::RedirectToController('credits');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = CreditCard::GetCreditCardById($id);
            parent::RenderPage(
                'CreditCards',
                'view/shared/dtadmin/layout.php', 
                'view/creditcards/delete.php',
                $model
            );
        }
    }

    public function Details () {
        $id = (int)$_REQUEST['id'];
        $model = CreditCard::GetCreditCardById($id);
        parent::RenderPage(
            'CreditCards',
            'view/shared/dtadmin/layout.php', 
            'view/creditcards/details.php',
            $model
        );
    }
}

?>