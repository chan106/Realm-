//
//  Student.h
//  Realm数据库
//
//  Created by Guo.JC on 2017/5/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import <Realm/Realm.h>

@interface Student : RLMObject

@property NSString *name;
@property NSInteger age;
/**
 获取数据模型
 */
+(Student *)StudentWithName:(NSString *)name;

/**
 删除数据
 */
+(void)deleteStudentWithName:(NSString *)name;

/**
 更新数据
 */
- (void)updateAge:(NSInteger)age;

@end
