//
//  AboutViewController.m
//  ICOI
//
//  Created by iMac on 8/15/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "AboutViewController.h"
#import "SWRevealViewController.h"
@interface AboutViewController ()

@end

@implementation AboutViewController

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
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] init];
    UIImage *image = [UIImage imageNamed:@"menu.png"];
    [leftButton setImage:image];
    self.navigationItem.leftBarButtonItem = leftButton;
    leftButton.action = @selector(revealToggle:);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

@end
