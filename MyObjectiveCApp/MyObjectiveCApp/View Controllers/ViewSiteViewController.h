//
//  ViewSiteViewController.h
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewSiteViewController : UIViewController<WKNavigationDelegate> {
    
    IBOutlet WKWebView *webView;
    IBOutlet UIActivityIndicatorView *activityView;
    
}

@property (nonatomic, strong) IBOutlet WKWebView *webView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activityView;

@end

NS_ASSUME_NONNULL_END
