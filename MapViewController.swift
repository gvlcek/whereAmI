//
//  MapViewController.swift
//  whereAmI
//
//  Created by Guadalupe Vlcek on 1/3/17.
//  Copyright © 2017 Vlcek Guadalupe. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var MapKit: MKMapView!
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let actualLocation = locations[0]
        let mySpan:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(actualLocation.coordinate.latitude, actualLocation.coordinate.longitude)
        let myRegion:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, mySpan)
        MapKit.setRegion(myRegion, animated: true)
        
        self.MapKit.showsUserLocation = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

}
