<div class="card-footer">

    <div style=" float: left;">
        Showing
        <?php echo e($dataDosen->firstitem()); ?>

        to
        <?php echo e($dataDosen->lastitem()); ?>

        of
        <?php echo e($dataDosen->total()); ?>

        entries
    </div>
    <div style=" float: right;">
        <?php echo e($dataDosen->links()); ?>

    </div>
</div>
<?php /**PATH C:\Users\Lenovo\Documents\GitHub\kbk\resources\views/layout/tablefooter.blade.php ENDPATH**/ ?>