//
//  ParkPlaceMark.h
//  tab8
//
//  Created by Fernando Gomez on 07-05-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface ParkPlaceMark : NSObject<MKAnnotation> {
	CLLocationCoordinate2D coordinate;
}
@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;
-(id)initWithCoordinate:(CLLocationCoordinate2D) coordinate;
- (NSString *)subtitle;
- (NSString *)title;

@end

