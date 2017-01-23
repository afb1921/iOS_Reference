//
//  MasterViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/23/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

