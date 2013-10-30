//
//  CoreLocationController.m
//  CurrentLocationDemo
//
//  Created by Sumit Sharma on 10/31/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import "CoreLocationController.h"

@implementation CoreLocationController

- (id)init {
    self = [super init];
    if(self != nil) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    [self.delegate update:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    [self.delegate locationError:error];
}

@end
