<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Credit card</h1>
          <a href="?c=creditcards&a=Create" class="btn btn-success">Tạo ra</a>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID Customer</th>
              <th>Number Card</th>
              <th>Bank</th>
              <th>Owner</th>
              <th>Branch</th>
              <th>Start Time</th>
              <th>End Time</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $credit_card) { 
            ?>
              <tr>
                <td><?=$credit_card->getIdCustomer()?></td>
                <td><?=$credit_card->getNumberCard()?></td>
                <td><?=$credit_card->getNameBank()?></td>
                <td><?=$credit_card->getNameOwner()?></td>
                <td><?=$credit_card->getNameBranch()?></td>
                <td><?=$credit_card->getStartTime()?></td>
                <td><?=$credit_card->getEndTime()?></td>
                <td>
                  <a class="fa fa-eye btn btn-info btn-sm" href="?c=creditcards&a=Details&id=<?=$credit_card->getNumberCard()?>"></a>
                  <a class="fa fa-pencil btn btn-warning btn-sm" href="?c=creditcards&a=Edit&id=<?=$credit_card->getNumberCard()?>"></a>
                  <a class="fa fa-trash btn btn-danger btn-sm" href="?c=creditcards&a=Delete&id=<?=$credit_card->getNumberCard()?>"></a>
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