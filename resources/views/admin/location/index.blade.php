@extends('layouts.app')
<style>
    /* Search Box Styling */
    .search-box {
        padding: 10px;
        background-color: #f8f9fa;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    #place-search {
        border-radius: 8px 0 0 8px;
        padding: 10px;
    }

    .input-group-append .btn {
        border-radius: 0 8px 8px 0;
    }

    /* Map Styling */
    #map {
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
    }

    /* Places List Styling */
    #places-list {
        list-style-type: none;
        padding: 0;
    }

    #places-list li {
        border-radius: 8px;
        margin-bottom: 15px;
        background-color: #fff;
        padding: 15px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    #places-list li:hover {
        transform: scale(1.02);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    #places-list li h5 {
        margin-bottom: 10px;
        font-size: 1.1rem;
        font-weight: 600;
    }

    #places-list li p {
        font-size: 0.9rem;
        color: #555;
    }

    /* Button Hover Effect */
    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }

    .btn-outline-primary:hover {
        background-color: #e6f0ff;
    }

    .btn-outline-success:hover {
        background-color: #d4edda;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .search-box .input-group {
            flex-direction: column;
        }

        .input-group-append .btn {
            border-radius: 8px;
            margin-top: 10px;
        }
    }

    /* Loading Spinner */
    #loading {
        display: inline;
        font-weight: bold;
        color: #007bff;
        margin-top: 10px;
    }

    /* Error Message Styling */
    #error-message {
        margin-top: 15px;
    }

    /* Image Styling */
    .img-thumbnail {
        border-radius: 8px;
    }

    /* Scrollable Container for Place Details */
    .place-details-container {
        max-height: 200px; /* Set the desired height for scrolling */
        overflow-y: auto; /* Enable vertical scrolling */
        padding: 10px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }
</style>

@section('content')
<div class="row">
    <div class="col-md-12">
        {{-- Search Box --}}
        <div class="search-box mb-3">
            <div class="input-group">
                <input type="text" id="place-search" placeholder="Search places (e.g., school)..."
                       class="form-control">
                <div class="input-group-append">
                    <button class="btn btn-primary" onclick="searchPlaces()">Search</button>
                </div>
            </div>
        </div>

        {{-- Placeholder for Map --}}
        <div id="map" style="height: 400px; width: 100%;" class="mb-3"></div>

        {{-- Display List of Places --}}
        <ul id="places-list" class="list-group mt-3"></ul>

        {{-- Error Message --}}
        <div id="error-message" class="alert alert-danger" style="display: none;"></div>

        {{-- Loading Spinner --}}
        <div id="loading" style="display: none;">Loading...</div>
    </div>
</div>

<script>
    let map, bounds;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 37.7749, lng: -122.4194 },
            zoom: 10
        });
        bounds = new google.maps.LatLngBounds();
    }

    function searchPlaces() {
        const query = document.getElementById('place-search').value.trim();

        if (query.length < 3) {
            alert("Please enter at least 3 characters to search.");
            return;
        }

        document.getElementById('loading').style.display = 'inline';
        document.getElementById('error-message').style.display = 'none';

        fetch("{{ route('location.search') }}", {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ query: query }),
        })
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('error-message').innerText = data.error;
                document.getElementById('error-message').style.display = 'block';
            } else {
                displayPlacesOnMap(data);
                displayPlacesList(data);
            }
            document.getElementById('loading').style.display = 'none';
        })
        .catch(error => {
            console.error('Error fetching places:', error);
            alert("Failed to fetch places. Please try again.");
            document.getElementById('loading').style.display = 'none';
        });
    }

    function displayPlacesOnMap(places) {
        bounds = new google.maps.LatLngBounds();
        places.forEach(place => {
            const location = {
                lat: place.geometry.location.lat,
                lng: place.geometry.location.lng
            };

            const marker = new google.maps.Marker({
                position: location,
                map: map,
                title: place.name
            });

            bounds.extend(location);
        });

        map.fitBounds(bounds);
    }

    function displayPlacesList(places) {
        const placesList = document.getElementById('places-list');
        placesList.innerHTML = '';

        places.forEach(place => {
            const li = document.createElement('li');
            li.classList.add('list-group-item');

            let placeImage = `<img src="https://via.placeholder.com/150" alt="Place Image" class="img-thumbnail" style="width: 150px; height: 150px; margin-right: 15px;">`;
            if (place.photos && place.photos.length > 0) {
                placeImage = `<img src="https://maps.googleapis.com/maps/api/place/photo?maxwidth=150&photoreference=${place.photos[0].photo_reference}&key=AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM" alt="Place Image" class="img-thumbnail" style="width: 150px; height: 150px; margin-right: 15px;">`;
            }

            li.innerHTML = `
                <div class="d-flex align-items-center">
                    ${placeImage}
                    <div>
                        <h5>${place.name}</h5>
                        <div class="place-details-container">
                            <p><strong>Address:</strong> ${place.formatted_address}</p>
                            <p><strong>Coordinates:</strong> (${place.geometry.location.lat}, ${place.geometry.location.lng})</p>
                            <a href="{{ url('places') }}/${place.place_id}/view" class="btn btn-outline-primary btn-sm">
                                <i class="fas fa-eye"></i> View
                            </a>
                            <a href="{{ url('places') }}/${place.place_id}/review" class="btn btn-outline-success btn-sm ml-2">
                                <i class="fas fa-star"></i> Review
                            </a>
                        </div>
                    </div>
                </div>
            `;

            placesList.appendChild(li);
        });
    }

    function viewPlace(placeId) {
        window.location.href = `{{ url('places') }}/${placeId}/view`;
    }

    function reviewPlace(placeId) {
        window.location.href = `{{ url('places') }}/${placeId}/review`;
    }
</script>

<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM&callback=initMap">
</script>
@endsection
