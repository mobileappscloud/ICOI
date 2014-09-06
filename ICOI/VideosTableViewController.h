//
//  VideosTableViewController.h
//  ICOI
//
//  Created by iMac on 8/13/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideosTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)NSMutableArray *urlArray;
@end
