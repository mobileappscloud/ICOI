
//
//  MapViewController.m
//  ICOI
//
//  Created by iMac on 8/8/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "MapViewController.h"
#import "SWRevealViewController.h"


@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] init];
    UIImage *image = [UIImage imageNamed:@"menu.png"];
    [leftButton setImage:image];
    self.navigationItem.leftBarButtonItem = leftButton;
    leftButton.action = @selector(revealToggle:);
    
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    self.mapView.delegate = self;
    
    // Ensure that we can view our own location in the map view.
    [self.mapView setShowsUserLocation:YES];
    
    //Instantiate a location object.
    locationManager = [[CLLocationManager alloc] init];
    
    //Make this controller the delegate for the location manager.
    [locationManager setDelegate:self];
    
    //Set some paramater for the location object.
    [locationManager setDistanceFilter:kCLDistanceFilterNone];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    //Set the first launch instance variable to allow the map to zoom on the user location when first launched.
    firstLaunch=YES;
    
  

    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D pinCoordinate;
    pinCoordinate.latitude = 33.696743;
    pinCoordinate.longitude = -117.765443;
    point.coordinate = pinCoordinate;
    point.title = @"Islamic Center of Irvine";
    point.subtitle = @"2 Truman Irvine CA 92620",
    [mapView addAnnotation:point];
   // [mapView setCenterCoordinate:pinCoordinate];
    
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(pinCoordinate, 1000, 1000);
    [mapView setRegion:region];
}

#pragma mark - MKMapViewDelegate methods.










- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
