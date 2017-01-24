//
//  MasterViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/23/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "AFBHeadingsViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController
@synthesize content = _content;

-(NSArray *)content
{
    if (!_content) {
        _content = [[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ReferenceItems" ofType:@"plist"]];
    }
    return _content;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;
//
//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
//    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}


- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = self.objects[indexPath.row];
//        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
//        [controller setDetailItem:object];
//        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
//        controller.navigationItem.leftItemsSupplementBackButton = YES;
//    }
////    if([[segue identifier] isEqualToString:@"HeadingsViewSegue"]) {
////        AFBHeadingsViewController *controller = (AFBHeadingsViewController *)[[segue destinationViewController] topViewController];
////    }
}


#pragma mark - Table View


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.content count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = [[self.content objectAtIndex:indexPath.row] valueForKey:@"title"];
    cell.textLabel.text = object;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *segueIdentifier = [[self.content objectAtIndex:indexPath.row] valueForKey:@"segue"];
    [self performSegueWithIdentifier:segueIdentifier sender:nil];
}




@end
