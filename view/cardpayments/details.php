<div class="row">
  <div class="col-lg-6">
    <section class="panel">
      <header class="panel-heading">
        <h1>Mục chi tiết</h1>
        <a href="?c=cardpayments">Trở về</a>
      </header>
      <div class="panel-body">
        <dl class="dl-horizontal">
          <dt>ID Payment</dt><dd><?= $MODEL->getIdPayment() ?></dd>
          <dt>Number Card</dt><dd><?= $MODEL->getNumberCard() ?></dd>
        </dl>
      </div>
    </section>
  </div>
</div>