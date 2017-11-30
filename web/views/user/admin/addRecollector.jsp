<div style="display: none;">
    <form action="/RecycleMapApp/recollector" method="post">
        <h4>Recolectores</h4>
        <input type="hidden" name="action" value="addRecollector">
        <div class="row" style="padding-left: 15px;">
            <label>&nbsp;</label><label>&nbsp;</label>
            <div class="input-group input-group-icon">
                <input type="text" placeholder="ID" name="id" required/>
                <div class="input-icon"><i class="fa fa-user"></i></div>
            </div>
            <div class="input-group input-group-icon">
                <input type="text" placeholder="Nombre Completo" name="fullName" required/>
                <div class="input-icon"><i class="fa fa-user"></i></div>
            </div>
            <div class="inpu t-group input-group-icon">
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
        </div>
        <button type="submit" class="btn btn-success" >Registrar</button>
    </form>
</div> 