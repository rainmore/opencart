<div class="container carousel">
    <ul id="carousel<?php echo $module; ?>">

        <?php foreach ($banners as $banner): ?>
        <li>
        <a href="<?php echo $banner['link']; ?>">
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
        </a>
        </li>
        <?php endforeach;?>
    </ul>

    <script type="text/javascript">
        $(window).load(function() {
            $('#carousel<?php echo $module; ?>').flexisel({
                visibleItems: <?php echo $limit; ?>
            });
        });
    </script>
</div>
