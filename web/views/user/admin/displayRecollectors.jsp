<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table id="recollectorsTable" class="cell-border hover compact" width="100%">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre Completo</th>
            <th>Telefono</th>
            <th>Latitud</th>
            <th>Longitud</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody class="recollectorsTableBody">
        <c:forEach var="recollector" items="${recollectorList}" >
            
        <div class="row">
            <tr id="recollector-${recollector.id}">
                <td class="recollectorsTableId">${recollector.id}</td>
                <td>${recollector.fullName}</td>
                <td>${recollector.telephone}</td>
                <td>${recollector.latitude}</td>
                <td>${recollector.longitude}</td>
                <td class="recollectorsTableActions">
                    <a id="recollectorEdit-${recollector.id}" style="cursor: pointer;color: black;padding-right: 15px;" data-toggle="modal" data-target="#editRecollectorModal" onclick="selectRecollector(${recollector.id})">Editar <i class="fa fa-pencil"></i></a>
                    <a id="recollectorDelete-${recollector.id}" style="cursor: pointer;color: black;" onclick="deleteRecollector(${recollector.id})">Borrar <i class="fa fa-trash"></i></a>
                </td>
            </tr>   
        </c:forEach>
        </tbody>
</table>
<br><br>
<input type="hidden" name="action" value="updateRecollector">
<script>
  function selectRecollector(id) {
    $.ajax({
      url: "/RecycleMapApp/recollector",
      data: {
          "action": "selectRecollectorData",
          "id": id
      },
      type: "GET",
      success: (data) => {
          console.log("selected: ", data);
          $("#editRecollectorId").val(data.id);
          $("#editRecolelctorFullName").val(data.fullName.trim());
          $("#editRecolelctorTel").val(data.telephone.trim());
          $("#editRecolelctorLatitude").val(data.latitude);
          $("#editRecolelctorLongitude").val(data.longitude);
      },
      error: (error) => {
          console.log("error: ", error);
      }
    });
}
  
  function deleteRecollector(id) {
    $.ajax({
      url: "/RecycleMapApp/recollector",
      data: {
          "action": "deleteRecollectorData",
          "id": id
      },
      type: "POST",
      success: (data) => {
          $("#recollector-"+id).hide();
      },
      error: (error) => {
//         console.log("error: ", error);
      }
    });
  }
</script>