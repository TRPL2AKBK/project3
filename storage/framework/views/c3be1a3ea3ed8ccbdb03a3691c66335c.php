<div class="card">
    <div class="card-header">
        <h3 class="card-title">Data Prodi</h3>
    </div>
    <div class="card-body table-responsive p-0">
        
        <table id="example1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode Prodi</th>
                    <th>Prodi</th>
                    <th>Jurusan</th>
                    <th>Jenjang</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $prodi; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td> <?php echo e($loop->iteration); ?> </td>
                        <td> <?php echo e($p->kode_prodi); ?> </td>
                        <td> <?php echo e($p->prodi); ?> </td>
                        <td> <?php echo e($p->jurusan->jurusan); ?> </td>
                        <td> <?php echo e($p->jenjang); ?> </td>
                        <td>
                            <a href="<?php echo e(route('admin.user.edit', ['id' => $p->id])); ?>"class="btn btn-primary"><i
                                    class="fas fa-pen"></i> Edit</a>
                            <a data-toggle="modal" data-target="#modal-hapus<?php echo e($p->id); ?>" class="btn btn-danger"><i
                                    class="fas fa-trash-alt"></i> Hapus</a>
                        </td>
                    </tr>
                    <div class="modal fade" id="modal-hapus<?php echo e($p->id); ?>">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Konfirmasi Hapus Data</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Apakah kamu yakin ingin menghapus data user
                                        <b><?php echo e($p->name); ?></b>
                                    </p>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <form action="<?php echo e(route('admin.user.delete', ['id' => $p->id])); ?>" method="POST">
                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>
                                        <button type="button" class="btn btn-default"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Ya,
                                            Hapus</button>
                                    </form>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
</div>
<!-- /.card -->
<?php /**PATH C:\Users\Lenovo\Documents\GitHub\project3\kbk-ti\resources\views/admin/dataprodi.blade.php ENDPATH**/ ?>