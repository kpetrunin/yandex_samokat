# Петрунин Константин, 8-а когорта - финальный проект, QA+
import stand_request


def test_order_info_by_track_status_code_200():

    order_info = stand_request.get_order_info_by_track()
    assert order_info.status_code == 200
