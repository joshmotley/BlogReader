//
//  MasterViewController.m
//  BlogReader
//
//  Created by Joshua Motley on 8/3/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"


@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titlesArray = [NSArray arrayWithObjects:@"Getting started with WordPress", @"Whitespace in Web Design: What It Is and Why You Should Use It", @"Adaptive Images and Responsive SVGs - Treehouse Show Episode 15", @" Productivity is About Constraints and Concentration", @"A Guide to Becoming the Smartest Developer on the Planet", @"Teacher Spotligh: Zac Gordon", @"Do You Love What You Do?", @"Applying Normalize.css Reset - Quick Tip", @"How I Wrote", @" Responsive Techniques and All That Jazz", nil];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *title = self.titlesArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:title];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *title = self.titlesArray[indexPath.row];
    cell.textLabel.text = title;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.


@end
