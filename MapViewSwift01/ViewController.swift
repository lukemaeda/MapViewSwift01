//
//  ViewController.swift
//  MapViewSwift01
//
//  Created by MAEDAHAJIME on 2015/07/13.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mkMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Delegate をセット
        self.mkMap?.delegate = self
        
        // 緯度・軽度を設定　大阪難波
        var location:CLLocationCoordinate2D
        = CLLocationCoordinate2DMake(34.666316,135.500277)
        
        mkMap?.setCenterCoordinate(location,animated:true)
        
        // 縮尺を設定
        var region:MKCoordinateRegion = self.mkMap!.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        
        self.mkMap!.setRegion(region,animated:true)
        
        // 表示タイプを標準写真に設定
        /*
        * MKMapType.Standard    標準写真
        * MKMapType.Satellite   航空写真
        * MKMapType.Hybrid      ハイブリット
        */
        self.mkMap!.mapType = MKMapType.Standard
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

