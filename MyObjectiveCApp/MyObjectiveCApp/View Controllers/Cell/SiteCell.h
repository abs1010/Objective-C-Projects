//
//  SiteCell.h
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SiteCell : UITableViewCell {
    
    UILabel *primaryLabel;
    UILabel *secondaryLabel;
    UIImageView *myImageView;
}

@property (nonatomic, strong) UILabel *primaryLabel;
@property (nonatomic, strong) UILabel *secondaryLabel;
@property (nonatomic, strong) UIImageView *myImageView;

@end

NS_ASSUME_NONNULL_END
