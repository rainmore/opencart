<?php $_carouselID = 'myCarousel'; ?>
<?php if (!empty($banners)): ?>
<div id="<?php echo $_carouselID; ?>" class="carousel slide">
    <ol>
        <?php foreach ($banners as $key => $banner): ?>
        <li data-target="#<?php echo $_carouselID; ?>" data-slide-to="<?php echo $key; ?>" class="<?php if ($key == 0) echo 'active'; ?>"></li>
        <?php endforeach; ?>
    </ol>
    <div class="carousel-inner">
        <?php foreach ($banners as $key => $banner): ?>
        <div class="item <?php if ($key == 0) echo 'active'; ?>">
            <a href="<?php echo $banner['link']; ?>">
                <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
            </a>
            <div class="container">
                <div class="carousel-caption">
                    <h1>Example headline.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-large btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>
<?php endif; ?>
