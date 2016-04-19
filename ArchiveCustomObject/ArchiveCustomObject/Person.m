//
//  Person.m
//  ArchiveCustomObject
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "Person.h"

@implementation Person
//归档方法
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeInt:_age forKey:@"age"];
    [aCoder encodeObject:_name forKey:@"name"];
}
//解归档方法
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super init]) {
        self.age=[aDecoder decodeIntForKey:@"age"];
        self.name=[aDecoder decodeObjectForKey:@"name"];
    }
    return self;
    
}

@end
