//
//  ParkPlaceMark.m
//  tab8
//
//  Created by Fernando Gomez on 07-05-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import "ParkPlaceMark.h"

@implementation ParkPlaceMark
@synthesize coordinate;

- (NSString *)subtitle{
	return @"Put some text here";
}
- (NSString *)title{
	return @"Parked Location";
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c{
	coordinate=c;
	NSLog(@"%f,%f",c.latitude,c.longitude);
	return self;
}
@end