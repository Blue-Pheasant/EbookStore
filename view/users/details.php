<div class="row">
  <div class="col-lg-6">
    <section class="panel">
      <header class="panel-heading">
        <h1>Chi tiết người dùng</h1>
        <a href="?c=users">Trở về</a>
      </header>
      <div class="panel-body">
        <dl class="dl-horizontal">
          <dt>Tên tài khoản</dt><dd><?= $MODEL->getUsername() ?></dd>
          <dt>E-mail</dt><dd><?= $MODEL->getEmail() ?></dd>
          <dt>Tên</dt><dd><?= $MODEL->getName() ?></dd>
          <dt>Họ</dt><dd><?= $MODEL->getLastname() ?></dd>
          <dt>Thẻ nhận dạng - Chứng minh nhân dân</dt><dd><?= $MODEL->getIdCard() ?></dd>
          <dt>Điện thoại</dt><dd><?= $MODEL->getPhone() ?></dd>
          <dt>Role</dt><dd><?= $MODEL->getRole() ?></dd>
        </dl>
      </div>
    </section>
  </div>
</div>