<?php if (count($languages) > 1) : ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="language">
        <?php foreach ($languages as $key => $language): ?>
        <?php if ($key != 0): ?>&nbsp; | &nbsp;<?php endif; ?>
        <?php if ($language['code'] == $language_code): ?>
        <span><?php echo strtoupper($language['code']); ?></span>
        <?php else: ?>
        <a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
            <?php echo strtoupper($language['code']); ?>
        </a>
        <?php endif;?>
        <?php endforeach; ?>
        <input type="hidden" name="language_code" value="" />
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
</form>
<?php endif; ?>
