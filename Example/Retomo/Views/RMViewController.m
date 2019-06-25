//
//  RMViewController.m
//  Retomo
//
//  Created by bonadenys@gmail.com on 06/25/2019.
//  Copyright (c) 2019 bonadenys@gmail.com. All rights reserved.
//

#import "RMViewController.h"
#import "RMModel.h"
#import <Retomo/Retomo.h>

@interface RMViewController ()

@end

@implementation RMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Retomo * request = [[Retomo alloc]init];
    [request setup:@"https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json" setMethod:GET setHeader:nil withCompletion:^(NSDictionary * result) {
        RMModel *model = [[RMModel alloc]init:result];
        NSLog(@"Title: %@",model.title);
        NSLog(@"Rows: %@",[model.rows[0] valueForKey:@"title"]);
    }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
