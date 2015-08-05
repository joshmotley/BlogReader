//
//  NSObject+BlogPost.h
//  BlogReader
//
//  Created by Joshua Motley on 8/4/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (weak, nonatomic) NSString *title;
@property (weak, nonatomic) NSString *author;


-(instancetype)initWithTitle:(NSString *)_title;

@end
