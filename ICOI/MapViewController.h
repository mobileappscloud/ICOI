//
//  MapViewController.h
//  ICOI
//
//  Created by iMac on 8/8/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPoint.h"
#import <CoreLocation/CoreLocation.h>
#define kGOOGLE_API_KEY @"AIzaSyAcJgYblJd1aNT_KDcQqH8f54BvgT4eeHE"
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
    CLLocationCoordinate2D currentCentre;
    int currenDist;
    BOOL firstLaunch;
}

@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end
