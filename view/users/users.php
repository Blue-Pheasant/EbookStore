<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Người dùng</h1>
        <a href="?c=users&a=Create" class="btn btn-success">Tạo ra</a>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>Tên tài khoản</th>
              <th>Tên</th>
              <th>Họ</th>
              <th>Điện thoại</th>
              <th>E-mail</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $user) { 
            ?>
              <tr>
                <td><?=$user->getUsername()?></td>
                <td><?=$user->getName()?></td>
                <td><?=$user->getLastname()?></td>
                <td><?=$user->getPhone()?></td>
                <td><?=$user->getEmail()?></td>
                <td id="userButtons-cell">
                    <a class="fa fa-eye btn btn-info btn-sm" href="?c=users&a=Details&id=<?=$user->getId()?>"></a>
                    <!-- <button onclick="getUserDetails(this)" class="btn btn-info btn-sm" data-href="?c=users&a=DetailsJson&id=<?=$user->getId()?>"><i class="fa fa-eye"></i> Detalles</button> -->
                    <a class="fa fa-pencil btn btn-warning btn-sm" href="?c=users&a=Edit&id=<?=$user->getId()?>"></a>
                    <a class="fa fa-trash btn btn-danger btn-sm" href="?c=users&a=Delete&id=<?=$user->getId()?>"></a>
                    <!-- <button onclick="deleteUser(this)" class="btn btn-danger btn-sm" data-href="?c=users&a=DeleteJson&id=<?=$user->getId()?>"><i class="fa fa-trash"></i> Borrar</button> -->
                </td>
              </tr>
            <?php 
              }
            ?>
          </tbody>
        </table>
      </div>
    </section>
  </div>
</div>
