$(document).ready(function () {

    $('#tbPerfiles').DataTable(
        {
        //"scrollX": true,
        "stateSave": true,
        "language": {
            "lengthMenu": "Mostando  _MENU_  registros por página",
            "zeroRecords": "No existen registros",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No existen registros disponibles",
            "infoFiltered": "(filtrados de _MAX_ registros totales)",
            "search": "Buscar:",
            "paginate": {
                "first": "Primera",
                "last": "Ultima",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        "lengthMenu": [[2,5, 10, 25, 50, -1], [2,5, 10, 25, 50, "Todos"]]
    }
    );

    $('#btnNuevoPerfil').on('click', function () {
        //alert('hola');
        $('#modalNewPerfil').modal('show');
    });
    $('#demoEdit').on('click', function () {
        //alert('hola');
        $('#modalEditPerfil').modal('show');
    });
    $('#demoDelete').on('click', function () {
        //alert('hola');
        //$('#modalEditPerfil').modal('show');
        $.confirm({
            title: 'Confirmar!',
            type: 'orange',
            typeAnimated: true,
            theme: 'modern',
            content: '¿Esta seguro de eliminar el registro?',
            buttons: {
                
                Cancelar: {
                   
                    action: function () {
                        //$.alert('Canceled!');
                    }
                }
                   ,
                Confirmar:
                    {
                        btnClass: 'btn-warning',
                        action: function () {
                            $.alert('Registro eliminado correctamente!');
                        }
                    }
            }
        });
    });



});