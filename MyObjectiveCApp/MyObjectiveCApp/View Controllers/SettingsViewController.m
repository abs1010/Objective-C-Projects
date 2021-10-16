//
//  SettingsViewController.m
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize slVol, lbVol, sgDiff, lbDiff;
@synthesize tfName, tfEmail, lbName, lbEmail;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

-(IBAction)saveData:(id)sender {
    lbName.text = tfName.text;
    lbEmail.text = tfEmail.text;
}

-(IBAction)sliderValueChanged:(id)sender {
    [self updateSliderLabel];
}

- (void)updateSliderLabel {
    
    float vol = slVol.value;
    
    NSString *strVol = [NSString stringWithFormat:@"%.2f", vol];
    lbVol.text = strVol;
    
}

-(IBAction)segmentDidChanged:(id)sender {
    [self updateSegmentLabel];
}

- (void)updateSegmentLabel {
    NSString *str = [sgDiff titleForSegmentAtIndex:sgDiff.selectedSegmentIndex];
    NSString *textLabel = [NSString stringWithFormat:@"Difficulty: %@", str];
    lbDiff.text = textLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateSliderLabel];
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
