//
//  Person.h
//  ArchiveCustomObject
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject<NSCoding>
@property(nonatomic,assign)int age;
@property(nonatomic,copy)NSString* name;
@end
