<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Card Payment</h1>
          <!-- <a href="?c=cartpayments&a=Create" class="btn btn-success">Tạo ra</a> -->
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID Payment</th>
              <th>Number Card</th>
              <th class="no-sort"></th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($MODEL as $card_payment) { 
            ?>
              <tr>
                <td><?=$card_payment->getIdPayment()?></td>
                <td><?=$card_payment->getNumberCard()?></td>
                <td>
                  <a class="fa fa-trash btn btn-danger btn-sm" href="?c=cardpayments&a=Delete&id=<?=$card_payment->getIdPayment()?>"></a>
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