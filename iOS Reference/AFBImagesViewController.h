//
//  AFBImagesViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/24/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFBDetailViewController.h"
@interface AFBImagesViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UIImageView *correctImage;
@property (nonatomic, weak) IBOutlet UIImageView *incorrectImage;
@end
