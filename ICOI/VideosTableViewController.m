//
//  VideosTableViewController.m
//  ICOI
//
//  Created by iMac on 8/13/14.
//  Copyright (c) 2014 CongenialApps. All rights reserved.
//

#import "VideosTableViewController.h"
#import "SWRevealViewController.h"
#import "NiceTableViewCell.h"
#import "DTCustomColoredAccessory.h"
#import "VideosDisplayViewController.h"
@interface VideosTableViewController ()

@end

@implementation VideosTableViewController
@synthesize urlArray;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    urlArray = [[NSMutableArray alloc] init];
    [urlArray addObject:@"Sh. Jamaal Diwan: Lives of the Companions Part 1"];
    [urlArray addObject:@"Sh. Jamaal Diwan: Lives of the Companions Part 2"];
    [urlArray addObject:@"Eid Ul-Fitr Highlights 2013"];
    [urlArray addObject:@"Sh. Jamaal Diwan: Jummah"];
    [urlArray addObject:@"Kareem El Sayed: Jummah"];
    
    
    
    self.tableView.delegate = self;
    [super viewDidLoad];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] init];
    UIImage *image = [UIImage imageNamed:@"menu.png"];
    [leftButton setImage:image];
    self.navigationItem.leftBarButtonItem = leftButton;
    leftButton.action = @selector(revealToggle:);
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [urlArray count];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"next"])
    {
        VideosDisplayViewController *dvc = (VideosDisplayViewController *)segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if ([[urlArray objectAtIndex:indexPath.row] isEqualToString:@"Sh. Jamaal Diwan: Lives of the Companions Part 2"])
        {
        
            [dvc setVidURLString:@"https://www.youtube.com/watch?v=mwHoAbYaZhg"];
            
        
        }
        
        else if([[urlArray objectAtIndex:indexPath.row] isEqualToString:@"Eid Ul-Fitr Highlights 2013"])
    
        {
            [dvc setVidURLString:@"https://www.youtube.com/watch?v=G96YW5uXuRI"];
        }
        
        
        else if ([[urlArray objectAtIndex:indexPath.row] isEqualToString:@"Sh. Jamaal Diwan: Jummah"])
        {
            [dvc setVidURLString:@"https://www.youtube.com/watch?v=7jYLZGSfTe4"];
        }
        
        else if ([[urlArray objectAtIndex:indexPath.row] isEqualToString:@"Sh. Jamaal Diwan: Lives of the Companions Part 1"])
        {
            [dvc setVidURLString:@"https://www.youtube.com/watch?v=4xQ5gyDyonA"];
        }
        
        else if ([[urlArray objectAtIndex:indexPath.row] isEqualToString:@"Kareem El Sayed: Jummah"])
        {
            [dvc setVidURLString:@"https://www.youtube.com/watch?v=J125oxYKXE8"];
        }
        
        
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *NiceTableIdentifier = @"SimpleTableCell";
    
    NiceTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NiceTableIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NiceTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell.nameLabel setText:[urlArray objectAtIndex:indexPath.row]];
    
    
    
    
    cell.clipsToBounds = YES;
    
    DTCustomColoredAccessory *accessory = [DTCustomColoredAccessory accessoryWithColor:[UIColor brownColor]];
    accessory.highlightedColor = [UIColor brownColor];
    cell.accessoryView =accessory;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"next" sender:self];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
