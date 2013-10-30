//
//  ViewController.h
//  CurrentLocationDemo
//
//  Created by Sumit Sharma on 10/31/13.
//  Copyright (c) 2013 Sumit Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationController.h"

@interface ViewController : UIViewController<CoreLocationControllerDelegate>{
    
    CoreLocationController *locationController;
}

@property (nonatomic, retain) CoreLocationController *locationController;

@end
