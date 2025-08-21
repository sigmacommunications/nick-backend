@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-9">


        <form id="plan-form" action="{{ route('plans.submit') }}" method="POST">
            @csrf
            <input type="hidden" id="selected-plan-id" name="plan_id"> <!-- Hidden input for Plan ID -->
            <input type="hidden" id="selected-plan-type" name="plan_type"> <!-- Hidden input for Plan Type -->

            <div class="main-div">
                <div class="center-main">
                    <div class="text-div">
                        <h4 class="monthly">Monthly</h4>
                        <label class="switch">
                            <input type="checkbox" id="plan-toggle">
                            <span class="slider round"></span>
                        </label>
                        <h4 class="yearly">Yearly</h4>
                    </div>
                    <div id="plans-container" class="center-main1">
                        @foreach ($plans as $plan)
                            <div
                                class="plan-item"
                                data-plan-id="{{ $plan->id }}"
                                data-plan-type="{{ $plan->type }}"
                                data-plan-name="{{ $plan->name }}"
                                data-plan-price="{{ $plan->price }}">
                                <div class="center-main1-inner">
                                    <h4 class="center1a">${{ $plan->price }}</h4>
                                    <h1>{{ $plan->name }}</h1>
                                    <p class="center1b">{{ $plan->description }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <button type="button" id="submit-plan" class="schedule-btn">Subscribe Now</button>
            </div>
        </form>
    </div>

    {{-- Start Event --}}
    <div class="col-md-3">
        <div class="righbar-below">
            @include('admin.schedules.view')
        </div>
    </div>
    {{-- End Event --}}
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Function to toggle monthly/yearly plans
        $('#plan-toggle').on('change', function() {
            let isChecked = $(this).prop('checked');
            $('.plan-item').each(function() {
                if (isChecked) {
                    $(this).toggle($(this).data('plan-type') === 'yearly');
                } else {
                    $(this).toggle($(this).data('plan-type') === 'monthly');
                }
            });
        });

        // Handle plan selection
        $(document).on('click', '.plan-item', function() {
            let planId = $(this).data('plan-id');
            let planType = $(this).data('plan-type');

            // Set hidden input values
            $('#selected-plan-id').val(planId);
            $('#selected-plan-type').val(planType);

            // Highlight selected plan
            $('.plan-item').removeClass('selected'); // Remove highlight from any previously selected plan
            $(this).addClass('selected'); // Highlight the clicked plan

            console.log(`Selected Plan: ID = ${planId}, Type = ${planType}`); // Debugging log
        });

        // AJAX submit on button click
        $('#submit-plan').on('click', function(e) {
            e.preventDefault();

            let planId = $('#selected-plan-id').val();
            let planType = $('#selected-plan-type').val();

            if (!planId || !planType) {
                alert('Please select a plan before submitting.');
                return;
            }

            $.ajax({
                url: '{{ route("plans.submit") }}', // Route to submit
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    plan_id: planId,
                    plan_type: planType
                },
                success: function(response) {
                    alert(response.message || 'Plan selected successfully!');
                },
                error: function(xhr) {
                    console.error(xhr.responseJSON);
                    alert('Error: ' + (xhr.responseJSON.message || 'Something went wrong!'));
                }
            });
        });

        // Initialize toggle button to show only monthly plans by default
        $('#plan-toggle').trigger('change');
    });


</script>

<style>
    .selected {
        background: transparent radial-gradient(closest-side at 50% 50%, #E8DE7A 0%, #F79C00 100%);
        border-radius: 19px;
    }
</style>

@endsection
