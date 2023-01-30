    <footer>
      <div class="container">
        <div class="main-footer">
          <div class="footer-block contact-us">
            <h4><?php echo $text_service; ?></h4>
            <a href="tel:<?php echo $telephone; ?>" class="helpline-btn footer-big-btn">
              <div class="ic"><i class="material-icons">phone</i></div>
              <p><?php echo $open; ?></p>
              <h5><?php echo $telephone; ?></h5>
            </a>
            <a href="<?php echo $contact; ?>" class="store-locator-btn footer-big-btn">
              <div class="ic"><i class="material-icons">place</i></div>
              <p><?php echo $text_store_locator; ?></p>
              <h5><?php echo $text_find_stores; ?></h5>
            </a>
          </div>
          <?php if ($informations) { ?>
          <div class="footer-block about-us">
            <h4><?php echo $text_information; ?></h4>
            <ul>
              <?php foreach ($informations as $information) { ?>
              <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
              <?php } ?>
              <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php echo $support; ?>" style="color: #EF4A23" target="_blank" rel="noopener"><?php echo $text_support; ?></a></li>
              <li><a href="<?php echo $complain; ?>" style="color: #EF4A23" target="_blank" rel="noopener"><?php echo $text_complain; ?></a></li>
            </ul>
          </div>
          <?php } ?>
          <div class="footer-block org-info">
            <h4><?php echo $text_stay_connected; ?></h4>
            <p><b class="store-name"><?php echo $name; ?></b><br/><?php echo $text_address; ?>: <?php echo $address; ?></p>
            <p><b><?php echo $text_email; ?>:</b><br/><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a> </p>
          </div>
        </div>
        <div class="social-footer">
          <div class="app-links">
            <?php if($play_store || $app_store) { ?>
            <span class="app-link-text"><?php echo $text_apps; ?>:</span>
            <span class="app-link-items">
            <?php if($play_store) { ?>
            <a class="app-link" href="<?php echo $play_store; ?>" target="_blank" rel="noopener" title="<?php echo $short_name; ?> Android APP">
            <span class="icon-sprite playstore"></span>
            <span class="app-link-text">
            <span class="download"><?php echo $text_download; ?></span>
            <span class="app-store"><?php echo $text_google_play; ?></span>
            </span>
            </a>
            <?php } ?>
            <?php if($app_store) { ?>
            <a class="app-link" href="<?php echo $app_store; ?>" target="_blank" rel="noopener" title="<?php echo $short_name; ?> ISO APP">
            <span class="icon-sprite applestore"></span>
            <span class="app-link-text">
            <span class="download"><?php echo $text_download; ?></span>
            <span class="app-store"><?php echo $text_app_store; ?></span>
            </span>
            </a>
            <?php } ?>
            </span>
            <?php } ?>
          </div>
          <div class="social-links">
            <?php if($facebook) { ?>
            <a href="<?php echo $facebook; ?>" target="_blank" rel="noopener" title="Facebook">
              <span class="icon-sprite fb"></span>
            </a>
            <?php } ?>
            <?php if($youtube) { ?>
            <a href="<?php echo $youtube; ?>" target="_blank" rel="noopener" title="YouTube">
              <span class="icon-sprite youtube"></span>
            </a>
            <?php } ?>
            <?php if($instagram) { ?>
            <a href="<?php echo $instagram; ?>" target="_blank" rel="noopener" title="Instagram">
              <span class="icon-sprite insta"></span>
            </a>
            <?php } ?>
            <?php if($twitter) { ?>
            <a href="<?php echo $twitter; ?>" target="_blank" rel="noopener" title="Twitter">
              <span class="icon-sprite twitter"></span>
            </a>
            <?php } ?>
            <?php if($linkedin) { ?>
            <a href="<?php echo $linkedin; ?>" target="_blank" rel="noopener" title="LinkedIn">
              <span class="icon-sprite twitter"></span>
            </a>
            <?php } ?>
            <?php if($pinterest) { ?>
            <a href="<?php echo $pinterest; ?>" target="_blank" rel="noopener" title="Pinterest">
              <span class="icon-sprite twitter"></span>
            </a>
            <?php } ?>
          </div>
        </div>
        <div class="row sub-footer">
          <div class="col-md-6 copyright-info">
            <p><?php echo $copyright; ?></p>
          </div>
          <div class="col-md-6 powered-by">
            <p><?php echo $powered; ?></p>
          </div>
        </div>
      </div>
    </footer>
    <div class="overlay"></div>
  </body>
</html>