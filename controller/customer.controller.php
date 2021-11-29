<?php
class CustomersController extends BaseController {
    
    public function __CONSTRUCT (){}
    
    public function Index () {
        $model = Customer::GetAllCustomers();
        parent::RenderPage(
            'Customers', 
            'view/shared/dtadmin/layout.php', 
            'view/customers/customers.php',
            $model
        );
    }
    
    public function Edit () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new Customer(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity'],
                $_REQUEST['id']
            );
            $model->Edit();
            parent::RedirectToController('customers');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Customer::GetCustomerById($id);
            parent::RenderPage(
                'Customers',
                'view/shared/dtadmin/layout.php', 
                'view/customers/edit.php',
                $model
            );
        }
    }

    public function Create () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = new Customer(
                $_REQUEST['code'], 
                $_REQUEST['brand'],
                $_REQUEST['description'],
                $_REQUEST['price'],
                $_REQUEST['quantity']
            );
            $model->Create();
            parent::RedirectToController('customers');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            parent::RenderPage(
                'Customers',
                'view/shared/dtadmin/layout.php', 
                'view/customers/create.php'
            );
        }
    }

    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = (int)$_REQUEST['id'];
            $model = Customer::GetCustomerById($id);
            $model->Delete();
            parent::RedirectToController('customers');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Customer::GetCustomerById($id);
            parent::RenderPage(
                'Customers',
                'view/shared/dtadmin/layout.php', 
                'view/customers/delete.php',
                $model
            );
        }
    }

    public function Details () {
        $id = (int)$_REQUEST['id'];
        $model = Customer::GetCustomerById($id);
        parent::RenderPage(
            'Customers',
            'view/shared/dtadmin/layout.php', 
            'view/customers/details.php',
            $model
        );
    }
}

?>