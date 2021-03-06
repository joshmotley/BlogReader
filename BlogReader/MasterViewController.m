//
//  MasterViewController.m
//  BlogReader
//
//  Created by Joshua Motley on 8/3/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "MasterViewController.h"
#import "WebViewController.h"
#import "BlogPost.h"


@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    NSArray *blogPostsArray = [dataDictionary objectForKey:@"posts"];
    
    
   
    self.blogPosts = [NSMutableArray array];
    
    for (NSDictionary *bpDictionary in blogPostsArray) {
        BlogPost *blogPost = [[BlogPost alloc]initWithTitle:[bpDictionary objectForKey:@"title"]];
        blogPost.author = [bpDictionary objectForKey:@"author"];
        blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
        blogPost.date = [bpDictionary objectForKey:@"date"];
        blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
        
        
        
    
        
        [self.blogPosts addObject:blogPost];
    }
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues



#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.blogPosts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    tableView.separatorInset = UIEdgeInsetsZero;
    
   
    
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
   
    
    
  
    NSString *title = blogPost.title;
    NSString *author = [NSString stringWithFormat:@"Author: %@ Date : %@", blogPost.author, [blogPost formattedDate]];
    
    if([blogPost.thumbnail isKindOfClass:[NSString class]]){

    NSData *dataPic = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
        UIImage *thumbnailPicture = [UIImage imageWithData:dataPic];
        cell.imageView.image = thumbnailPicture;}else{
            cell.imageView.image = [UIImage imageNamed:@"icon29@2x.png"];
        
        }
  
    
    
    
    cell.textLabel.text = title;
    cell.detailTextLabel.text = author;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showBlogPost"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        [segue.destinationViewController setBlogPostUrl:blogPost.url];
        
        
}
}



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


@end
