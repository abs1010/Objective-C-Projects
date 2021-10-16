//
//  ChooseSiteViewController.h
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChooseSiteViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    
    NSArray *listData;
    NSArray *siteData;
    NSArray *imageData;
    
}

@property (nonatomic, strong) NSArray *listData;
@property (nonatomic, strong) NSArray *siteData;
@property (nonatomic, strong) NSArray *imageData;

@end

NS_ASSUME_NONNULL_END
