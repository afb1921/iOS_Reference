//
//  AFBButtonsViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/26/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFBDetailViewController.h"
@interface AFBButtonsViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UIButton *correctButton;
@property (nonatomic, weak) IBOutlet UIButton *incorrectButton;
@end
