<div class="row">
  <div class="col-lg-6">
    <section class="panel">
      <header class="panel-heading">
        <h1>Yêu cầu xác nhận</h1>
        <a href="?c=cart">Trở về</a>
      </header>
      <div class="panel-body">
        <div class="alert alert-info">
        Bằng cách tiếp tục, bạn đồng ý mua các mặt hàng sau:
        </div>
        <ul>
          <?php foreach($MODEL as $article) { ?>
            <li>
              <b><?=$article->getBrand()?> - <?=$article->getDescription()?>: </b><?=$article->getPrice()?>
            </li>
          <?php } ?>
        </ul>
        <div>
          <b>Total:</b> <?= array_sum(array_map(function ($element) { return $element->getPrice(); }, $MODEL));?>
        </div>
        <div class="m-top15">
          <form action="?c=cart&a=ConfirmCheckout" method="POST">
            <button type="submit" class="btn btn-block btn-lg btn-success"><i class="fa fa-shield"></i> Mua hàng</button>
          </form>  
        </div>
    </section>
  </div>
</div>