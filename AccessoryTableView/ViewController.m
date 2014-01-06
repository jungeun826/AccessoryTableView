//
//  ViewController.m
//  AccessoryTableView
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#define CELL_ID @"CELL_ID"
@interface ViewController ()<UITableViewDataSource, UITabBarDelegate>

@end

@implementation ViewController{
    NSArray *data;
}
//셀 선택시 log확인
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Select Row : %d", (int)indexPath.row);
}
//악세서리 버튼 클릭시
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Accessory Button tapped : %d", (int)indexPath.row);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    
    if(indexPath.row == 0)
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else if(indexPath.row == 1)
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    else if(indexPath.row == 2)
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    else if(indexPath.row == 3)
        cell.accessoryType = UITableViewCellAccessoryDetailButton;
    cell.textLabel.text = data[indexPath.row];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    data = @[@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
