<div class="panel-form">
  


<div class="box">
   <div class="box-header">
      <div class="pull-right">
          <a href="<?php echo base_url($controller.'/create') ?>" class="btn btn-info"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
      </div>
   </div>

 </div>
 
 <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Listado de Curriculum</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="tabla" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Apellidos</th> 
                        <th>Dni</th> 
                        <th>Fecha Nacimiento</th>
                        <th>Distrito</th>
                        <th>Direccion</th>
                        <th>Experiencia Laboral</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php

                      $_count = count($items);

                      for ($i=0; $i < $_count; $i++){
                      ?>
                      <tr>
                        <td><?php echo $i+1 ?></td>
                        <td><?php echo $items[$i]->nombre ?></td>
                        <td><?php echo $items[$i]->apellidos ?></td>
                        <td><?php echo $items[$i]->dni ?></td> 
                        <td><?php echo $items[$i]->fecha_nac ?></td>                        
                        <td><?php echo $items[$i]->distrito ?></td>
                        <td><?php echo $items[$i]->direccion ?></td>
                        <td><a href="" class="btn btn-primary exp_lab"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></td>
                        <td>
                          <a href="<?php echo base_url($controller.'/edit/'.$items[$i]->id) ?>" class="btn btn-success"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                          <a  id = "<?php echo $items[$i]->id ?>"  href="<?php echo base_url($controller.'/destroy/'.$items[$i]->id) ?>" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                        </td>
                      </tr>
                    <?php } ?> 
                         
                       
                    </tfoot>
                  </table>

                
                </div><!-- /.box-body -->
</div><!-- /.box -->

</div>


<script src="<?php echo base_url('public/master/curriculum.js') ?>"></script>