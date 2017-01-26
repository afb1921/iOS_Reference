//
//  SliderViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/26/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFBDetailViewController.h"
@interface AFBSliderViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UISlider *correctSlider;
@property (nonatomic, weak) IBOutlet UISlider *incorrectSlider;
@end
