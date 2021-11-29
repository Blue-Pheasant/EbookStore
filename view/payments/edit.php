<div class="row">
  <div class="col-lg-12">
    <section class="panel">
      <header class="panel-heading">
        <h1>Sửa đổi sản phẩm</h1>
        <a href="?c=articles">Trở về</a>
      </header>
      <div class="panel-body">
        <form action="?c=articles&a=Edit" method="POST" autocomplete="off">
          <div class="form-row">
            <div class="form-group col-md-4">
              <label for="code">ID</label>
              <input value="<?= $MODEL->getCode() ?>" type="text" class="form-control" id="code" name="code" placeholder="Código">
            </div>
            <div class="form-group col-md-4">
              <label for="brand">Branch</label>
              <input value="<?= $MODEL->getBrand() ?>" type="text" class="form-control" id="brand" name="brand" placeholder="Marca">
            </div>
            <div class="form-group col-md-4">
              <label for="description">Description</label>
              <input value="<?= $MODEL->getDescription() ?>" type="text" class="form-control" id="description" name="description" placeholder="micorreo@midominio.com">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
                <label for="price">Price</label>
                <input value="<?= $MODEL->getPrice() ?>" type="text" class="form-control" id="price" name="price" placeholder="Precio">
            </div>
            <div class="form-group col-md-6">
              <label for="quantity">Quantity</label>
              <input value="<?= $MODEL->getQuantity() ?>" type="number" class="form-control" id="quantity" name="quantity" placeholder="Apellidos">
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4">
              <input type="hidden" name="id" id="id" value="<?= $MODEL->getId() ?>" />
              <button type="submit" class="btn btn-primary"><i class="fa fa-pencil"></i> Chỉnh sửa sản phẩm</button>
            </div>
          </div>
        </form>
      </div>
    </section>
  </div>
</div>