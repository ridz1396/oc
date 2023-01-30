            <div class="home-slider">
              <?php foreach ($banners as $banner) { ?>
              <div class="slide">
                <?php if ($banner['link']) { ?>
                <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" width="982"  height="500" /></a>
                <?php } else { ?>
                    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" width="982"  height="500" />
                <?php } ?>
              </div>
              <?php } ?>
            </div>