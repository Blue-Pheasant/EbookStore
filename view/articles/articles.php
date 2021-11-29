<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Sản phẩm</h1>
        <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { 
                  $controller = strtolower($_REQUEST['c']);
                  $accion = isset($_REQUEST['a']) ? $_REQUEST['a'] : 'Index';
                  // We instantiate the driver
                  // require_once "controller/$controller.controller.php";
                  // $controller = ucwords($controller).'Controller';
                  // $controller = new $controller;
                  echo $controller .'<br>';
                  echo $accion .'<br>';
                  
                  
                  ?>
          <a href="?c=articles&a=Create" class="btn btn-success">Tạo ra</a>
        <?php } ?>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID</th>
              <th>Branch</th>
              <th>Description</th>
              <th>Price</th>
              <th>Quantity</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $article) { 
            ?>
              <tr>
                <td><?=$article->getCode()?></td>
                <td><?=$article->getBrand()?></td>
                <td><?=$article->getDescription()?></td>
                <td><?=$article->getPrice()?></td>
                <td><?=$article->getQuantity()?></td>
                <td>
                  <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
                    <a class="fa fa-eye btn btn-info btn-sm" href="?c=articles&a=Details&id=<?=$article->getId()?>"></a>
                    <a class="fa fa-pencil btn btn-warning btn-sm" href="?c=articles&a=Edit&id=<?=$article->getId()?>"></a>
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