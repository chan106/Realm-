//
//  Student.m
//  Realm数据库
//
//  Created by Guo.JC on 2017/5/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import "Student.h"

@implementation Student

/**
 设置主键
 */
+(NSString *)primaryKey{
    //主键
    return @"name";
}

/**
 获取数据模型
 */
+(Student *)StudentWithName:(NSString *)name
{
    RLMRealm *realm = [RLMRealm defaultRealm];
    Student *student = [Student objectForPrimaryKey:name];
    if (student == nil) {
        student = [[Student alloc] init];
        student.name = name;
        //增加模型
        [realm beginWriteTransaction];
        [realm addObject:student];
        [realm commitWriteTransaction];
    }
    return student;
}

/**
 更新数据
 */
- (void)updateAge:(NSInteger)age{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    //更改数据
    self.age = age;
    [realm commitWriteTransaction];
}

/**
 删除数据
 */
+ (void)deleteStudentWithName:(NSString *)name{
    RLMRealm *realm = [RLMRealm defaultRealm];
    Student *student = [Student objectForPrimaryKey:name];
    [realm beginWriteTransaction];
    //删除模型
    [realm deleteObject:student];
    [realm commitWriteTransaction];
}
@end
