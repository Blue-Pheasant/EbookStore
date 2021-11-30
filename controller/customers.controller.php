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
}

?>