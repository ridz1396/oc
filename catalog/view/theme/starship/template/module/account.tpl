<div class="ac-header">
        <div class="left">
          <span class="avatar"><img src="<?php echo 'http://www.gravatar.com/avatar/' . md5($email) . '?s=70&d=mp&r=g'; ?>" width="80" height="80" alt="RS"></span>
          <div class="name">
            <p><?php echo $text_hello; ?></p>
            <p class="user"><?php echo $user; ?></p>
          </div>
        </div>
        <div class="right">
          <div class="balance">
            <span class="blurb"><?php echo $text_reward; ?></span>
            <span class="amount"><?php echo $total_reward; ?></span>
          </div>
          <div class="balance">
            <span class="blurb"><?php echo $text_transaction; ?></span>
            <span class="amount"><?php echo $total_transaction; ?></span>
          </div>
        </div>
      </div>
      <ul class="navbar-nav ac-navbar">
        <li class="nav-item"><a href="<?php echo $order; ?>" class="nav-link"><span class="material-icons">chrome_reader_mode</span><?php echo $text_order; ?></a></li>
        <li class="nav-item"><a href="<?php echo $edit; ?>" class="nav-link"><span class="material-icons">person</span><?php echo $text_edit; ?></a></li>
        <li class="nav-item"><a href="<?php echo $password; ?>" class="nav-link"><span class="material-icons">lock</span><?php echo $text_password; ?></a></li>
        <li class="nav-item"><a href="<?php echo $address; ?>" class="nav-link"><span class="material-icons">book</span><?php echo $text_address; ?></a></li>
        <li class="nav-item"><a href="<?php echo $wishlist; ?>" class="nav-link"><span class="material-icons">favorite_border</span><?php echo $text_wishlist; ?></a></li>
        <li class="nav-item"><a href="<?php echo $pc; ?>" class="nav-link"><span class="material-icons">important_devices</span><?php echo $text_pc; ?></a></li>
        <li class="nav-item"><a href="<?php echo $reward; ?>" class="nav-link"><span class="material-icons">stars</span><?php echo $text_reward; ?></a></li>
        <li class="nav-item"><a href="<?php echo $transaction; ?>" class="nav-link"><span class="material-icons">account_balance_wallet</span><?php echo $text_transaction; ?></a></li>
      </ul>
      