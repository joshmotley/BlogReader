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
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

-(NSURL *)thumbnailURL
{
    return [NSURL URLWithString:self.thumbnail];
}

-(NSString *)formattedDate
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date =[dateformatter dateFromString:self.date];

    
    [dateformatter setDateFormat:@"EE MMM, dd"];
    
    
    return [dateformatter stringFromDate:date];
}
@end
