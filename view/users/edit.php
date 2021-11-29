<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
          <h1>Sửa đổi người dùng</h1>
          <a href="?c=users">Trở về</a>
        <?php } else { ?>
          <h1>Tài khoản của tôi</h1>
        <?php } ?>
      </header>
      <div class="panel-body">
        <form action="?c=users&a=Edit" method="POST" autocomplete="off">
          <div class="form-row">
            <div class="form-group col-md-4">
              <label for="username">Người sử dụng</label>
              <input value="<?= $MODEL->getUsername() ?>" type="text" class="form-control" id="username" name="username" placeholder="Username" <?=(Security::GetLoggedUser())->getRole() == 'CLIENT' ? 'disabled="disabled"' : ''?>>
            </div>
            <div class="form-group col-md-4">
              <label for="password">Mật khẩu</label>
              <input value="<?= $MODEL->getPassword() ?>" type="text" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <div class="form-group col-md-4">
                <label for="email">E-mail</label>
                <input value="<?= $MODEL->getEmail() ?>" type="email" class="form-control" id="email" name="email" placeholder="yourmail@example.com">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
                <label for="name">Tên</label>
              <input value="<?= $MODEL->getName() ?>" type="text" class="form-control" id="name" name="name" placeholder="Tên">
            </div>
            <div class="form-group col-md-6">
              <label for="lastName">Họ</label>
              <input value="<?= $MODEL->getLastname() ?>" type="text" class="form-control" id="lastName" name="lastName" placeholder="Họ">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="idCard">Thẻ nhận dạng - Chứng minh nhân dân</label>
              <input value="<?= $MODEL->getIdCard() ?>" type="text" class="form-control" id="idCard" name="idCard" placeholder="CMND">
            </div>
            <div class="form-group col-md-4">
              <label for="phone">Điện thoại</label>
              <input value="<?= $MODEL->getPhone() ?>" type="text" class="form-control" id="phone" name="phone" placeholder="Điện thoại">
            </div>
            <div class="form-group col-md-2">
              <label for="role">Rol</label>
              <select name="role" id="role" class="form-control" <?=(Security::GetLoggedUser())->getRole() == 'CLIENT' ? 'disabled="disabled"' : ''?>>
                <option value="CLIENT" <?= $MODEL->getRole() === 'CLIENT' ? 'selected="selected"' : ''?>>Cliente</option>
                <option value="ADMIN" <?= $MODEL->getRole() === 'ADMIN' ? 'selected="selected"' : ''?>>Administrador</option>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4">
              <input type="hidden" name="id" id="id" value="<?= $MODEL->getId() ?>" />
              <button type="submit" class="btn btn-primary"><i class="fa fa-pencil"></i> Modificar usuario</button>
            </div>
          </div>
        </form>
      </div>
    </section>
  </div>
</div>