<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Các mặt hàng trong giỏ hàng của tôi</h1>
        <a href="?c=cart&a=Checkout" class="btn btn-success"><i class="fa fa-shopping-cart"></i> Mua hàng</a>
        <a href="?c=cart&a=Empty" class="btn btn-danger"><i class="fa fa-trash"></i> Xóa giỏ hàng</a>
      </header>
      <div class="panel-body">
        <table class="table table-striped table-hover dt-datatable">
          <thead>
            <tr>
              <th>ID</th>
              <th>Branch</th>
              <th>Description</th>
              <th>Price</th>
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
                <td><a href="?c=cart&a=RemoveArticle&id=<?=$article->getCartUniqueId()?>" class="btn btn-danger btn-sm fa fa-minus-circle"></a></td>
              </tr>
            <?php 
              }
            ?>
          </tbody>
          <tfoot>
            <tr>
              <th style="text-align:right;" colspan="3">Total:</th>
              <td><?= array_sum(array_map(function ($element) { return $element->getPrice(); }, $MODEL));?></td>
              <td></td>
            </tr>
          </tfoot>
        </table>
      </div>
    </section>
  </div>
</div>