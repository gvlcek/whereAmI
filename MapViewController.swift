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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
