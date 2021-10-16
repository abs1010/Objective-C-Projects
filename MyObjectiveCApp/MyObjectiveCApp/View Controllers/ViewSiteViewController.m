//
//  ViewSiteViewController.m
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import "ViewSiteViewController.h"
#import "AppDelegate.h"

@interface ViewSiteViewController ()

@end

@implementation ViewSiteViewController
@synthesize webView, activityView;

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    
    [activityView setHidden:NO];
    [activityView startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [activityView setHidden:YES];
    [activityView stopAnimating];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSURL *urlAddress = [NSURL URLWithString:mainDelegate.selectedURL];
    
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    
    [webView loadRequest:url];
    webView.navigationDelegate = self;
    
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
