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
    
    NSDictionary *blogPost1 = [NSDictionary dictionaryWithObjectsAndKeys:@"The Missing Widget in Android",@"title",@"Ben Jakuben", @"author", nil];
    
    NSDictionary *blogPost2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Getting Started with Ios Development", @"title", @"Amit Bijlani", @"author", nil];
    
    NSDictionary *blogPost3 = [NSDictionary dictionaryWithObjectsAndKeys:@"An Interview with Shay Howe", @"title", @"Joe Villanueva", @"author", nil];
   
    self.blogPosts = [NSArray arrayWithObjects:blogPost1, blogPost2, blogPost3, nil];
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
        NSDictionary *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        NSString *title = [blogPost objectForKey:@"title"];
        [[segue destinationViewController] setDetailItem:title];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.blogPosts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDictionary *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    NSString *title = [blogPost objectForKey:@"title"];
    NSString *author = [blogPost objectForKey:@"author"];
    cell.textLabel.text = title;
    cell.detailTextLabel.text = author;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.


@end
