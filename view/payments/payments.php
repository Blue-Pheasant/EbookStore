<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Sản phẩm</h1>
          <a href="?c=articles&a=Create" class="btn btn-success">Tạo ra</a>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $article) { 
            ?>
              <tr>
                <td><?=$article->getId()?></td>
                <td>
                  <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
                    <a class="fa fa-trash btn btn-danger btn-sm" href="?c=articles&a=Delete&id=<?=$article->getId()?>"></a>
                  <?php } else { ?>
                    <a class="btn btn-primary btn-sm" href="?c=articles&a=Buy&id=<?=$article->getId()?>"><i class="fa fa-cart-plus"></i> Thêm vào giỏ hàng</a>
                  <?php } ?>
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