//
//  ViewController.swift
//  MapUse
//
//  Created by 304 on 2020/09/15.
//  Copyright © 2020 304. All rights reserved.
//

import UIKit
//지도 사용을 위한 프레임워크
import MapKit
//현재 위치를 가져오기 위한 프레임워크
import CoreLocation

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    //위치 정보 사용 객체의 참조를 저장할 변수
    var locationManager : CLLocationManager!
    
    
    @IBAction func zoom(_ sender: Any) {
    }
    
    @IBAction func type(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //위치 정보 객체 생성
        locationManager = CLLocationManager()
        //위치정보 사용권한 요청 - 실행 중일 때만 권한을 사용
        locationManager.requestWhenInUseAuthorization()
        
        //현재 위치를 지도에 표시하도록 설정
        mapView.showsUserLocation = true
    }


}

