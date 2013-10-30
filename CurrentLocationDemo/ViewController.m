//
//  ViewController.m
//  CurrentLocationDemo
//
//  Created by Sumit Sharma on 10/31/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize locationController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*******************************************************************************************************
     Initialize the delegate of CoreLocation
    ********************************************************************************************************/
    
    self.locationController = [[CoreLocationController alloc] init];
    self.locationController.delegate = self;
    [self.locationController.locationManager startUpdatingLocation];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)update:(CLLocation *)location {
    
    /*******************************************************************************************************
     Getting the Current Location of the Device in the Log
     ********************************************************************************************************/
    NSLog(@"%f", [location coordinate].latitude);
    NSLog(@"%f", [location coordinate].longitude);
    
}

- (void)locationError:(NSError *)error {
    /*******************************************************************************************************
     This will return error if comes
     ********************************************************************************************************/
    NSLog(@"%@", [error description]);
}
@end
