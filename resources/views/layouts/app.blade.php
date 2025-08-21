
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" /> --}}
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.6.0/css/all.css">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.bootstrap5.css"/>

    <title>Nick Dashboard</title>
    <style>
        .rightbar-below {
            position: fixed;
            right: 0;
            top: 100px; /* Adjust as needed */
            width: 300px;
            z-index: 1000;
        }
    </style>
</head>

<body>
    <section class="admin">
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-md-3">
                    @include('layouts.sidebar')
                </div>
                <!-- Main Content -->
                <div class="col-md-9">
                    @include('layouts.navbar')
                    <!-- Dynamic Content Section -->
                    @yield('content')
                    <!-- Static Event Section -->
                </div>
            </div>
        </div>
    </section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
{{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.1.8/js/dataTables.bootstrap5.js"></script>


<script>
    function switchBtn() {
        if ($('[type="checkbox"]').is(":checked")) {
            $(".center-main2").css("display", "block");
            $(".center-main1").css("display", "none");
            $(".monthly1").css("font-weight", "600");
            $(".monthly").css("font-weight", "400");
        }
        else {
            $(".center-main1").css("display", "block");
            $(".center-main2").css("display", "none");
            $(".monthly").css("font-weight", "600");
            $(".monthly1").css("font-weight", "400");
        }
    }
    new DataTable('#example');

    document.addEventListener('DOMContentLoaded', function () {
        var dropdownButton = document.getElementById('dropdownUser');
        var dropdownMenu = dropdownButton.nextElementSibling;

        dropdownButton.addEventListener('click', function (e) {
            // Toggle the visibility of the dropdown menu
            dropdownMenu.classList.toggle('show');
        });

        // Close the dropdown if clicked outside
        document.addEventListener('click', function (e) {
            if (!dropdownButton.contains(e.target) && !dropdownMenu.contains(e.target)) {
                dropdownMenu.classList.remove('show');
            }
        });
    });
</script>

</html>
