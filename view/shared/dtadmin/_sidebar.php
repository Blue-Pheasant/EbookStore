<div id="sidebar-wrapper" class="harmonic">
  <ul class="sidebar-nav">
    <li class="sidebar-brand">
      <a href="#">
        Hello, <?=(Security::GetLoggedUser() != null ? Security::GetLoggedUser()->getName() : 'Invitado')?>!
      </a>
    </li>
    <?php if (Security::UserIsLoggedIn()) { ?>
      <li>
        <a href="?c=home" class="<?=(($PAGE == 'Home') ? 'active' : '')?>">
          <i class="fa fa-dashboard" aria-hidden="true"></i> &nbsp;Bắt đầu
        </a>
      </li>
      <?php if ((Security::GetLoggedUser())->getRole() == 'ADMIN') { ?>
        <li>
          <a href="?c=users" class="<?=(($PAGE == 'Users') ? 'active' : '')?>">
            <i class="fa fa-building" aria-hidden="true"></i> &nbsp;Người dùng
          </a>
        </li>
        <li>
          <a href="?c=customers" class="<?=(($PAGE == 'Customers') ? 'active' : '')?>">
            <i class="fa fa-building" aria-hidden="true"></i> &nbsp;Khách hàng
          </a>
        </li>
        <li>
          <a href="?c=creditcards" class="<?=(($PAGE == 'CreditCards') ? 'active' : '')?>">
            <i class="fa fa-history" aria-hidden="true"></i>&nbsp;Credit card
          </a>
        </li>
        <li>
          <a href="?c=cardpayments" class="<?=(($PAGE == 'CardPayments') ? 'active' : '')?>">
            <i class="fa fa-history" aria-hidden="true"></i>&nbsp;Card payment
          </a>
        </li>
        <li>
          <a href="?c=payments" class="<?=(($PAGE == 'Payments') ? 'active' : '')?>">
            <i class="fa fa-history" aria-hidden="true"></i>&nbsp;Payment
          </a>
        </li>
      <?php } else { ?>
        <li>
          <a href="?c=users&a=Edit&id=<?=(Security::GetLoggedUser())->getId()?>" class="<?=(($PAGE == 'Users') ? 'active' : '')?>">
            <i class="fa fa-building" aria-hidden="true"></i>&nbsp;Tài khoản của tôi
          </a>
        </li>
        <li>
          <a href="?c=sales" class="<?=(($PAGE == 'Sales') ? 'active' : '')?>">
            <i class="fa fa-history" aria-hidden="true"></i>&nbsp;Lịch sử mua sắm
          </a>
        </li>
      <?php } ?>
      <li>
        <a href="?c=articles" class="<?=(($PAGE == 'Articles') ? 'active' : '')?>">
          <i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;Sản phẩm
        </a>
      </li>
    <?php } ?>
  </ul>
</div>