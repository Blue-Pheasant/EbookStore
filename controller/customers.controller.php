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
    
    public function Delete () {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            $id = (int)$_REQUEST['id'];
            $model = Customer::GetCustomerById($id);
            $model->Delete();
            parent::RedirectToController('customers');
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

    public function Create () {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $user = new User(
                $_REQUEST['f_name'], 
                $_REQUEST['m_name'],
                $_REQUEST['l_name'],
                $_REQUEST['sex'],
                $_REQUEST['date_of_birth'],
                $_REQUEST['address_customer'],
                $_REQUEST['phone_customer'],
                $_REQUEST['email_customer'],
                $_REQUEST['username_customer'],
                $_REQUEST['id_customer']
            );
            $user->Create();
            parent::RedirectToController('customers');
        } else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
            parent::RenderPage(
            'Customers',
            'view/shared/dtadmin/layout.php', 
            'view/customers/create.php',
            );
        }
    }
}

?>