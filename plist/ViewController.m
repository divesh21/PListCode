//
//  ViewController.m
//  plist
//
//  Created by Felix-Madhuri on 19/10/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//  NSArray *dir=  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
// NSString *dbpath=[NSString stringWithFormat:@"%@/Database1.plist",[dir lastObject]];
//    NSLog(@"%@",dbpath);
//    
//    NSMutableDictionary *dic=[[NSMutableDictionary alloc]initWithContentsOfFile:dbpath];
//    if(dic==nil)
//    {
//        dic=[[NSMutableDictionary alloc]init];
//    }
//    
    
//    [dic setValue:@"Madhuri" forKey:@"fname"];
//    [dic setObject:@"Jagtap" forKey:@"lname"];
//    
//  //  NSArray *phone=[NSArray arrayWithObjects:@12312,@12412,@4321423, nil];
//    NSArray *phone=@[@43223423,@45353454,@6575675];
//    
//    [dic setObject:phone forKey:@"phoneno"];
//
//    [dic writeToFile:dbpath atomically:YES];
//    
//    ///////////////////////////////////////////////////////////////////////////
//    NSMutableDictionary *res=[[NSMutableDictionary alloc]initWithContentsOfFile:dbpath];
//    
//    NSLog(@"%@",res);
//
    
    
    
//    
//    Student *s1=[[Student alloc]init];
//    
//    s1.rollno=1;
//    s1.name=@"abcd";
//    s1.address=@"pune";
//    s1.phoneno=234;
//    
//    
//    Student *s2=[[Student alloc]init];
//    
//    s2.rollno=1;
//    s2.name=@"abcd";
//    s2.address=@"pune";
//    s2.phoneno=234;
//    
//    
//    
//    
//    [dic setObject:s1 forKey:@"stud1"];
//    [dic setObject:s2 forKey:@"stud2"];
//    
//    
//    [dic writeToFile:dbpath atomically:YES];
//    
//    
//    
//    NSMutableDictionary *r=[[NSMutableDictionary alloc]initWithContentsOfFile:dbpath];
//    
//    NSLog(@"%@",r);
    
  NSURL *filepath=  [[NSBundle mainBundle]URLForResource:@"Property List" withExtension:@"plist"];
    
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc]initWithContentsOfURL:filepath];
    
    NSLog(@"%@",dic);
    
    NSMutableDictionary *temp=[[NSMutableDictionary alloc]init];
    [temp setObject:@3 forKey:@"rollno"];
    [temp setObject:@"asdsa" forKey:@"name"];
    
    [dic setObject:temp forKey:@"stud3"];
    
    
    [dic writeToURL:filepath atomically:YES];
    
    NSMutableDictionary *dic1=[[NSMutableDictionary alloc]initWithContentsOfURL:filepath];
    
    NSLog(@"%@",dic1);

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
