<div class="row">
  <div class="col-lg-6">
    <section class="panel">
      <header class="panel-heading">
        <h1>Mục chi tiết</h1>
        <a href="?c=creditcards">Trở về</a>
      </header>
      <div class="panel-body">
        <dl class="dl-horizontal">
          <dt>ID</dt><dd><?= $MODEL->getCode() ?></dd>
          <dt>Branch</dt><dd><?= $MODEL->getBrand() ?></dd>
          <dt>Description</dt><dd><?= $MODEL->getDescription() ?></dd>
          <dt>Price</dt><dd><?= $MODEL->getPrice() ?></dd>
          <dt>Quantity</dt><dd><?= $MODEL->getQuantity() ?></dd>
        </dl>
      </div>
    </section>
  </div>
</div>