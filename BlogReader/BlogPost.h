//
//  NSObject+BlogPost.h
//  BlogReader
//
//  Created by Joshua Motley on 8/4/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSString *thumbnail;
@property (strong, nonatomic) NSString *date;

-(instancetype)initWithTitle:(NSString *)_title;

-(NSURL *)thumbnailURL;

-(NSString *)formattedDate;

@end
