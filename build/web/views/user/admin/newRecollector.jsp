    
<div class="modal fade" id="newRecollectorModal" role="dialog">
    <div class="modal-dialog">
        
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar nuevo Recolector</h4>
            </div>
            <div class="modal-body">
                <div class="container" style="padding: 15px;">
                    <form action="recollector" method="post">
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="ID" name="id" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Nombre Completo" name="fullName" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="tel" placeholder="Telefono" name="telephone" required/>
                            <div class="input-icon"><i class="fa fa-phone"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Latitude" name="latitude" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Longitude" name="longitude" required/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                        
                        <button type="submit" class="btn btn-success" style="float: left;margin-left: 20px;">Registrar</button>

                    </form>
                </div>
            </div>
            <div class="modal-footer">
                    
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
            
    </div>
</div>