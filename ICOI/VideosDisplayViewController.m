//
//  VideosDisplayViewController.m
//  ICOI
//
//  Created by iMac on 8/13/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "VideosDisplayViewController.h"
#import "YKMediaPlayerKit.h"
#import "YKYouTubeVideo.h"
#import "SWRevealViewController.h"

//NSString *const kYouTubeVideo = @"http://www.youtube.com/watch?v=1hZ98an9wjo";
NSString *const kYouTubeVideo = @"https://www.youtube.com/watch?v=mwHoAbYaZhg";

@interface VideosDisplayViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *youTubeView;

@end

@implementation VideosDisplayViewController
{
    YKYouTubeVideo  *_youTubeVideo;

}
@synthesize vidURLString;
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
    
    _youTubeVideo = [[YKYouTubeVideo alloc] initWithContent:[NSURL URLWithString:vidURLString]];
    [_youTubeVideo parseWithCompletion:^(NSError *error) {
        [_youTubeVideo thumbImage:YKQualityLow completion:^(UIImage *thumbImage, NSError *error) {
            self.youTubeView.image = thumbImage;
        }];
    }];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)youTubeButtonPressed:(UIButton *)sender {
    
    [_youTubeVideo play:YKQualityHigh];

    
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
