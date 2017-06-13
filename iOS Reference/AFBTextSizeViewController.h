//
//  AFBTextSizeViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/25/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFBDetailViewController.h"
#import "UILabel+FontFamilyLabel.h"
@interface AFBTextSizeViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UILabel *correctTextSize;
@end
