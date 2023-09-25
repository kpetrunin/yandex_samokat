import requests
import data
import configuration


def order_create():
    return requests.post(configuration.URL_SERVICE + configuration.CREATE_ORDER, json=data.order_create_body)


response = order_create()
track_no = response.json()['track']



def get_order_info_by_track():
    return requests.get(configuration.URL_SERVICE + configuration.GET_ORDER_BY_TRACK, params={'t': track_no})
#otvet = get_order_info_by_track()

#print(otvet.json())