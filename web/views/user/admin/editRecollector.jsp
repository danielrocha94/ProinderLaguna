    
<div class="modal fade" id="editRecollectorModal" role="dialog">
    <div class="modal-dialog">
        
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Editar Recolector</h4>
            </div>
            <div class="modal-body">
                <div class="container" style="padding: 15px;">
                    <form action="recollector" method="get">
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="ID" name="id" id="editRecolelctorId" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Nombre Completo" name="fullName" id="editRecolelctorFullName" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="tel" placeholder="Telefono" name="telephone" id="editRecolelctorTel" required/>
                            <div class="input-icon"><i class="fa fa-phone"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Latitude" name="latitude" id="editRecolelctorLatitude" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Longitude" name="longitude" id="editRecolelctorLongitude" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        
                        <button type="submit" class="btn btn-success" style="float: left;margin-left: 20px;">Guardar</button>

                    </form>
                </div>
            </div>
            <div class="modal-footer">
                    
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
            
    </div>
</div>