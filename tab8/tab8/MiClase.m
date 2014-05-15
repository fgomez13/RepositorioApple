//
//  MiClase.m
//  tab8
//
//  Created by Fernando Gomez on 28-04-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import "MiClase.h"
#import "ParkPlaceMark.h"

@interface MiClase ()

@end

@implementation MiClase

@synthesize mapView=_mapView;


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
    
    [mapView setMapType:MKMapTypeStandard];
    [mapView setMapType:MKMapTypeHybrid];
    [mapView setMapType:MKMapTypeSatellite];
      self.mapView.mapType = MKMapTypeStandard;
     self.mapView.delegate = self;
      self.mapView.showsUserLocation = YES;
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    
    
   
    initialLocation.latitude = -33.441967;
    initialLocation.longitude= -70.634117;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(initialLocation, 8000, 8000);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    ParkPlaceMark *placemark=[[ParkPlaceMark alloc] initWithCoordinate:initialLocation];
    placemark.coordinate=region.center;
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = initialLocation;
    point.title = @"FullVapor";
    point.subtitle = @"Aseo Industrial";
    [self.mapView addAnnotation:placemark];
  
    

    
}




- (IBAction)setMapType:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            self.mapView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            self.mapView.mapType = MKMapTypeHybrid;
            break;
        default:
            break;
    }
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










- (IBAction) annotationViewClick:(id) sender {
    NSLog(@"clicked");
}



- (MKAnnotationView *) mapView:(MKMapView *) mapView viewForAnnotation:(id ) annotation {
    MKAnnotationView *customAnnotationView=[[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil];
    UIImage *pinImage = [UIImage imageNamed:@"arbol.png"];
    [customAnnotationView setImage:pinImage];
    customAnnotationView.canShowCallout = YES;
    UIImageView *leftIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arbol.png"]];
    customAnnotationView.leftCalloutAccessoryView = leftIconView;
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [rightButton addTarget:self action:@selector(annotationViewClick:) forControlEvents:UIControlEventTouchUpInside];
    UIImage *carImage = [[UIImage imageNamed:@"broom.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [rightButton setImage:pinImage forState:UIControlStateNormal];
    rightButton.frame = CGRectMake(0, 0, 44, 44);
    rightButton.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    rightButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    customAnnotationView.rightCalloutAccessoryView = rightButton;
    return customAnnotationView;
}




- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
}

- (IBAction)storeLocationInfo:(id) sender{
	//Either we can use geocoder to get a placemark or just create our own.
	/*
     MKReverseGeocoder *geocoder=[[MKReverseGeocoder alloc] initWithCoordinate:location];
     geocoder.delegate=self;
     [geocoder start];
     */
	//Our own
    
	//ParkPlaceMark *placemark=[[ParkPlaceMark alloc] initWithCoordinate:initialLocation];
	//[mapView addAnnotation:placemark];
}


@end
