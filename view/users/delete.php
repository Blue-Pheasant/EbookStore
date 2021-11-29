<div class="row">
  <div class="col-lg-6">
    <section class="panel">
      <header class="panel-heading">
        <h1>Xóa người dùng</h1>
        <a href="?c=users">Trở về</a>
      </header>
      <div class="panel-body">
        <form action="?c=users&a=Delete" method="POST">
          <input type="hidden" name="id" id="id" value="<?= $MODEL->getId() ?>" />
          <dl class="dl-horizontal">
            <dt>Tên tài khoản</dt><dd><?= $MODEL->getUsername() ?></dd>
            <dt>E-mail</dt><dd><?= $MODEL->getEmail() ?></dd>
            <dt>Tên</dt><dd><?= $MODEL->getName() ?></dd>
            <dt>Họ</dt><dd><?= $MODEL->getLastname() ?></dd>
            <dt>Thẻ nhận dạng - Chứng minh nhân dân</dt><dd><?= $MODEL->getIdCard() ?></dd>
            <dt>Điện thoại</dt><dd><?= $MODEL->getPhone() ?></dd>
            <dt>Role</dt><dd><?= $MODEL->getRole() ?></dd>
          </dl>
          <button type="submit" class="btn btn-danger"><i class="fa fa-trash"></i> Xóa người dùng</button>
        </form>
      </div>
    </section>
  </div>
</div>