<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Tạo người dùng</h1>
        <a href="?c=users">Trở về</a>
      </header>
      <div class="panel-body">
        <form action="?c=users&a=Create" method="POST" autocomplete="off">
          <div class="form-row">
            <div class="form-group col-md-4">
              <label for="username">Người sử dụng</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="Usuario">
            </div>
            <div class="form-group col-md-4">
              <label for="password">Mật khẩu</label>
              <input type="text" class="form-control" id="password" name="password" placeholder="Contraseña">
            </div>
            <div class="form-group col-md-4">
                <label for="email">E-mail</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="micorreo@midominio.com">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
                <label for="name">Tên</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Nombre">
            </div>
            <div class="form-group col-md-6">
              <label for="lastName">Họ</label>
              <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Apellidos">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="idCard">Thẻ nhận dạng - Chứng minh nhân dân</label>
              <input type="text" class="form-control" id="idCard" name="idCard" placeholder="Cédula">
            </div>
            <div class="form-group col-md-4">
              <label for="phone">Điện thoại</label>
              <input type="text" class="form-control" id="phone" name="phone" placeholder="Teléfono">
            </div>
            <div class="form-group col-md-2">
              <label for="role">Rol</label>
              <select name="role" id="role" class="form-control">
                <option value="CLIENT" selected="selected">Client</option>
                <option value="ADMIN">Administrador</option>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4">
              <button type="submit" class="btn btn-primary"><i class="fa fa-user-plus"></i> Tạo người dùng</button>
            </div>
          </div>
        </form>
      </div>
    </section>
  </div>
</div>