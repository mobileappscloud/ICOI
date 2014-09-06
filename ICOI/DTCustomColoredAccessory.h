//
//  DTCustomColoredAccessory.h
//  FindItClose
//
//  Created by iMac on 7/18/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DTCustomColoredAccessory : UIControl
{
	UIColor *_accessoryColor;
	UIColor *_highlightedColor;
}

@property (nonatomic, retain) UIColor *accessoryColor;
@property (nonatomic, retain) UIColor *highlightedColor;

+ (DTCustomColoredAccessory *)accessoryWithColor:(UIColor *)color;
@end
