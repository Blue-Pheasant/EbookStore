<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Khách hàng</h1>
          <a href="?c=articles&a=Create" class="btn btn-success">Tạo ra</a>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID</th>
              <th>UserName</th>
              <th>Name</th>
              <th>Sex</th>
              <th>Date of birth</th>
              <th>Address</th>
              <th>Phone</th>
              <th>Email</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $customer) { 
            ?>
              <tr>
                <td><?=$customer->getId()?></td>
                <td><?=$customer->getUserName()?></td>
                <td><?=$customer->getName()?></td>
                <td><?=$customer->getSex()?></td>
                <td><?=$customer->getDateOfBirth()?></td>
                <td><?=$customer->getAddress()?></td>
                <td><?=$customer->getPhone()?></td>
                <td><?=$customer->getEmail()?></td>
                <td> 
                  <a class="fa fa-trash btn btn-danger btn-sm" href="?c=customers&a=Delete&id=<?=$customer->getId()?>"></a>
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