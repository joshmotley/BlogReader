//
//  NSObject+BlogPost.m
//  BlogReader
//
//  Created by Joshua Motley on 8/4/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

-(instancetype)initWithTitle:(NSString *)title{
    self = [super init];
    if(self){
        self.title = title;}
    
    return self;
}

@end
