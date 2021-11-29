<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button 
      type="button" 
      class="navbar-toggle collapsed" 
      data-toggle="collapse" 
      data-target="#bs-example-navbar-collapse-1"
      aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#menu-toggle" id="menu-toggle">
        <i class="fa fa-arrow-left" aria-hidden="true"></i>
      </a>
      <a class="navbar-brand" href="#">The Kaffeehouse</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <?php if (Security::GetLoggedUser() != null && ShoppingCartSession::ShoppingCartExists()) { 
                $cart = ShoppingCartSession::GetShoppingCart(); ?>
          <li>
            <a href="?c=cart">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
              &nbsp;
              <?=count($cart->articles)?> Các mặt hàng trong giỏ hàng
            </a>
          </li>
        <?php } ?>
        <li><a href="?c=authentication&a=Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Đăng xuất</a></li>
      </ul>
    </div>
  </div>
</nav>