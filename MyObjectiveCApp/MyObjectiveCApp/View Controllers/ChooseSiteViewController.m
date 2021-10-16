//
//  ChooseSiteViewController.m
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import "ChooseSiteViewController.h"
#import "SiteCell.h"
#import "AppDelegate.h"

@interface ChooseSiteViewController ()

@end

@implementation ChooseSiteViewController
@synthesize listData, imageData, siteData;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    listData = [NSArray arrayWithObjects:@"Munkee1", @"Munkee2", @"Munkee3", @"Munkee4", @"Munkee5", @"Munkee6", @"Munkee7", @"Munkee8", nil];
    imageData = [NSArray arrayWithObjects:@"img1.jpeg", @"img2.jpg", @"img3.jpeg", @"img4.png", @"img5.png", @"img6.png", @"img7.png", @"img8.png", nil];
    
    siteData = [NSArray arrayWithObjects:@"https://www.r7.com", @"https://www.globo.com", @"https://www.sbt.com", @"https://www.google.com", @"https://www.youtube.com", @"https://www.globo.com", @"https://www.globo.com", @"https://www.globo.com", nil];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return listData.count;
}


- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 60;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

///Default Cell
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
//
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.textLabel.text = [listData objectAtIndex:indexPath.row];
//
//    return cell;
    
    SiteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.primaryLabel.text = [listData objectAtIndex:indexPath.row];
    cell.secondaryLabel.text = [siteData objectAtIndex:indexPath.row];
    cell.myImageView.image = [UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSString *url = [siteData objectAtIndex:indexPath.row];
    //UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@""];
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    mainDelegate.selectedURL = [siteData objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"ChooseSegueToView" sender:self];
    
}

///Segue
-(IBAction)unwindToChooseVC:(UIStoryboardSegue *)sender {
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
