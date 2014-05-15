//
//  MiClase.h
//  tab8
//
//  Created by Fernando Gomez on 28-04-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>



#import <CoreLocation/CoreLocation.h>


@interface MiClase : UIViewController<MKMapViewDelegate>{
 CLLocationCoordinate2D initialLocation;
  MKMapView *mapView;  
    
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)setMapType:(UISegmentedControl *)sender;

- (IBAction)storeLocationInfo:(id) sender;
- (IBAction) annotationViewClick:(id) sender;

    // TODO: Implement


@end
