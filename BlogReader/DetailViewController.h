//
//  DetailViewController.h
//  BlogReader
//
//  Created by Joshua Motley on 8/3/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

