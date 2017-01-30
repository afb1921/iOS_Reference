//
//  AFBStatusControlViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/30/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBDetailViewController.h"
#import "AFBBackgroundDelegate.h"

@interface AFBStatusControlViewController : AFBDetailViewController <BackgroundDelegate>
- (IBAction)start:(id)sender;
@property (nonatomic, weak) IBOutlet UIProgressView *progressView;
@property (nonatomic, weak) IBOutlet UIButton *button;

@end

