//
//  ListTableViewDatasource.m
//  Time-Tracker
//
//  Created by Sergio Perez on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ListTableViewDatasource.h"

@implementation ListTableViewDatasource

//Create a new datasource object (ListTableViewDatasource subclass of NSObject)
//Add the tableViewDatasource protocol required methods (cellForRow, and numberOfRows)

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *tableViewCell = [[UITableViewCell alloc]init];
    
    tableViewCell.textLabel.text = @"string";
    
    return tableViewCell;
    
}

@end

