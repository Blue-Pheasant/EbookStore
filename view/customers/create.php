<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Tạo người dùng</h1>
        <a href="?c=customers">Trở về</a>
      </header>
      <div class="panel-body">
        <form action="?c=customers&a=Create" method="POST" autocomplete="off">
          <div class="form-row">
            <div class="form-group col-md-4">
              <label for="code">ID</label>
              <input type="text" class="form-control" id="id_customer" name="id_customer" placeholder="id_customer">
            </div>
            <div class="form-group col-md-4">
              <label for="code">FNAME</label>
              <input type="text" class="form-control" id="f_name" name="f_name" placeholder="f_name">
            </div>
            <div class="form-group col-md-4">
              <label for="code">MNAME</label>
              <input type="text" class="form-control" id="m_name" name="m_name" placeholder="m_name">
            </div>
            <div class="form-group col-md-4">
              <label for="code">LNAME</label>
              <input type="text" class="form-control" id="l_name" name="l_name" placeholder="l_name">
            </div>
            <div class="form-group col-md-4">
              <label for="code">SEX</label>
              <input type="text" class="form-control" id="sex" name="sex" placeholder="sex">
            </div>
            <div class="form-group col-md-4">
              <label for="code">Birth Day</label>
              <input type="text" class="form-control" id="date_of_birth" name="date_of_birth" placeholder="date_of_birth">
            </div>
            <div class="form-group col-md-4">
              <label for="brand">Address</label>
              <input type="text" class="form-control" id="address_customer" name="address_customer" placeholder="address_customer">
            </div>
            <div class="form-group col-md-4">
              <label for="brand">Phone</label>
              <input type="text" class="form-control" id="phone_customer" name="phone_customer" placeholder="phone_customer">
            </div>
            <div class="form-group col-md-4">
              <label for="brand">Email</label>
              <input type="text" class="form-control" id="email_customer" name="email_customer" placeholder="email_customer">
            </div>
            <div class="form-group col-md-4">
              <label for="brand">Username</label>
              <input type="text" class="form-control" id="username_customer" name="username_customer" placeholder="username_customer">
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4">
              <button type="submit" class="btn btn-primary"><i class="fa fa-cart-plus"></i> Tạo mới</button>
            </div>
          </div>
        </form>
      </div>
    </section>
  </div>
</div>