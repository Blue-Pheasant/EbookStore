<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
          <h1>Bán hàng</h1>
        <?php } else { ?>
          <h1>Lịch sử mua hàng của tôi</h1>
        <?php } ?>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
            <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
              <th>Người sử dụng</th>
            <?php } ?>
              <th>ID</th>
              <th>Branch</th>
              <th>Description</th>
              <th>Số hóa đơn</th>
              <th>Ngày bán</th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $sale) { 
            ?>
              <tr>
                <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
                  <td><?=$sale->getUsername()?></td>
                <?php } ?>
                <td><?=$sale->getCode()?></td>
                <td><?=$sale->getBrand()?></td>
                <td><?=$sale->getDescription()?></td>
                <td><?=$sale->getInvoiceNumber()?></td>
                <td><?=$sale->getSaleDate()?></td>
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