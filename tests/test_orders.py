import sender_stand_request


def test_create_and_get_order():
    create_response = sender_stand_request.post_new_order()
    assert create_response.status_code == 201

    track = create_response.json()["track"]

    get_response = sender_stand_request.get_order_by_track(track)
    assert get_response.status_code == 200