//
//  AddViewController.m
//  Realm数据库
//
//  Created by Guo.JC on 2017/5/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import "AddViewController.h"
#import "Student.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;

@end

@implementation AddViewController
- (IBAction)add:(id)sender {
    
    Student *new = [Student StudentWithName:_nameTF.text];
    [new updateAge:_ageTF.text.integerValue];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
