//
//  DonateViewController.h
//  ICOI
//
//  Created by iMac on 8/8/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DonateViewController : UIViewController <AVCaptureMetadataOutputObjectsDelegate>
@property (weak, nonatomic) IBOutlet UIView *viewPreview;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UIButton *bbItemStart;
- (IBAction)startStopReading:(id)sender;

@end
