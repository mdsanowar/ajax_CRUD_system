<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	 <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

     <style type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></style>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Ajax Crud</title>
</head>
<body>
	
	<div class="container" style="margin-top: 20px">
		<a onclick="addForm()" class="btn btn-sm btn-danger text-white" style="float: right;">Add New</a>
		<table id="post-table" class="table table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>Title</th>
					<th>Author</th>
					<th>Details</th>
					<th>action</th>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		<!-- Post Form-->
		@include('form')
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <script>
    	var table1 = $('#post-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('all.post') }}",
            columns: [
              {data:'id', name:'id'},
              {data:'title', name:'title'},
              {data:'author', name:'author'},
              {data:'details', name:'details'},
              {data:'action', name:'action', orderable: false, searchable: false}
            ]
          });

    	function addForm() {
	        save_method = "add";
	        $('input[name=_method]').val('POST');
	        $('#modal-form').modal('show');
	        $('#modal-form form')[0].reset();
	        $('.modal-title').text('Add Post');
	        $('#insertbutton').text('Add Post');
      	}

      	$(function(){
            $('#modal-form form').on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('post') }}";
                    else url = "{{ url('post') . '/' }}" + id;
                    $.ajax({
                        url : url,
                        type : "POST",
                        data: new FormData($("#modal-form form")[0]),
                       contentType: false,
                       processData: false,
                        success : function(data) {
                            $('#modal-form').modal('hide');
                            table1.ajax.reload();
                            swal({
                              title: "Good job!",
                              text: "Data inserted successfully!",
                              icon: "success",
                              button: "Great!",
                            });
                        },
                        error : function(data){
                            swal({
                                title: 'Oops...',
                                text: data.message,
                                type: 'error',
                                timer: '1500'
                            })
                        }
                    });
                    return false;
                }
            });
        });

        //edit ajax request are here
         function editForm(id) {
         save_method = 'edit';
          $('input[name=_method]').val('PATCH');
          $('#modal-form form')[0].reset();
          $.ajax({
            url: "{{ url('post') }}" + '/' + id + "/edit",
            type: "GET",
            dataType: "JSON",
            success: function(data) {
              $('#modal-form').modal('show');
              $('.modal-title').text('Edit Post');
              $('#insertbutton').text('Update Post');
              $('#id').val(data.id);
              $('#title').val(data.title);
              $('#author').val(data.author);
              $('#details').val(data.details);
            },
            error : function() {
                alert("Nothing Data");
            }
          });
        } 

        //show single data ajax part here
       function showData(id) {
          $.ajax({
              url: "{{ url('post') }}" + '/' + id,
              type: "GET",
              dataType: "JSON",
            success: function(data) {
              $('#single-data').modal('show');
              $('.modal-title').text('Details');
              $('#contactid').text(data.id); 
              $('#fullname').text(data.title);
              $('#contactemail').text(data.author);
              $('#contactnumber').text(data.details);
            },
            error : function() {
                alert("Ghorar DIm");
            }
          });
        }

     //== ====Delete data =======

        function deleteData(id){
          var csrf_token = $('meta[name="csrf-token"]').attr('content');
          swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                  url : "{{ url('post') }}" + '/' + id,
                  type : "POST",
                  data : {'_method' : 'DELETE', '_token' : csrf_token},
                  success : function(data) {
                      table1.ajax.reload();
                      swal({
                        title: "Delete Done!",
                        text: "You clicked the button!",
                        icon: "success",
                        button: "Done",
                      });
                  },
                  error : function () {
                      swal({
                          title: 'Oops...',
                          text: data.message,
                          type: 'error',
                          timer: '1500'
                      })
                  }
              });
            } else {
              swal("Your imaginary file is safe!");
            }
          });

        } 

    </script>
</body>
</html>