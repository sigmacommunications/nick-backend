@extends('layouts.app')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content mt-4">
        <div class="container-fluid">
            <!-- Stat Boxes Row -->
            <div class="row g-3">
                <!-- Total Image -->
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card shadow border-0 bg-primary text-white">
                        <div class="card-body text-center">
                            <h3 class="fw-bold">{{ $image }}</h3>
                            <p>Total Images</p>
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-light text-primary">
                            <span>More info</span>
                            <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </div>
                <!-- Total Documents -->
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card shadow border-0 bg-success text-white">
                        <div class="card-body text-center">
                            <h3 class="fw-bold">{{ $document }}</h3>
                            <p>Total Documents</p>
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-light text-success">
                            <span>More info</span>
                            <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </div>
                <!-- Total Signatures -->
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card shadow border-0 bg-info text-white">
                        <div class="card-body text-center">
                            <h3 class="fw-bold">{{ $signature }}</h3>
                            <p>Total Signatures</p>
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-light text-info">
                            <span>More info</span>
                            <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </div>
                <!-- User Registrations -->
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card shadow border-0 bg-warning text-white">
                        <div class="card-body text-center">
                            <h3 class="fw-bold">{{ $users }}</h3>
                            <p>User Registrations</p>
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-light text-warning">
                            <span>More info</span>
                            <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection
