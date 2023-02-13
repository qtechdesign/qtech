//
//  AddDeviceNavigator.swift
//  FrostProtectionSystem_IOS
//
//  Created by TiepNguyen on 9/20/19.
//  Copyright © 2019 qtech. All rights reserved.
//

import Foundation
import GoogleMaps

protocol AddDeviceNavigator: BaseNavigation {
    func showMapSelectCoordinates(location: CLLocationCoordinate2D?, delegate: MapSelectCoordinatesDelegate)
    func showScanQRCodeScreen(delegate: ScanQRCodeDelegate)
}

class AddDeviceNavigatorImpl: BaseNavigatorImpl, AddDeviceNavigator {
    
    func showMapSelectCoordinates(location: CLLocationCoordinate2D?, delegate: MapSelectCoordinatesDelegate) {
        self.viewController?.navigationController?.pushViewController(MapSelectCoordinatesViewController.create(location: location, delegate: delegate), animated: true)
    }
    
    func showScanQRCodeScreen(delegate: ScanQRCodeDelegate) {
        let viewController = ScanQRCodeViewController.create()
        viewController.delegate = delegate
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
