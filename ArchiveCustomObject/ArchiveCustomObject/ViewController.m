//
//  ViewController.m
//  ArchiveCustomObject
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)save:(UIButton *)sender {
    //设置归档对象
    Person* person=[[Person alloc]init];
    person.age=18;
    person.name=@"二狗";
    
    //设置归档路径
    NSString* path=NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    
    NSString* personPath=[path stringByAppendingPathComponent:@"person.data"];
    
    //归档
    [NSKeyedArchiver archiveRootObject:person toFile:personPath];
    
    NSLog(@"%@",personPath);
}
- (IBAction)read:(UIButton *)sender {
    //取出归档路径
    NSString* path=NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    
    NSString* personPath=[path stringByAppendingPathComponent:@"person.data"];
    
    //取出对象
    Person* p=[NSKeyedUnarchiver unarchiveObjectWithFile:personPath];
    
    NSLog(@"%d---%@",p.age,p.name);
    
}

@end
