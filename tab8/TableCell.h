//
//  TableCell.h
//  tab8
//
//  Created by Fernando Gomez on 09-05-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TableCellDelegate <NSObject>
@optional
- (void)deleteButtonTappedOnCell:(id)sender;
@end

@interface TableCell :UITableViewCell




@property (strong, nonatomic) IBOutlet UILabel *title;


@property (strong, nonatomic) IBOutlet UIImageView *cellImage;

@property (nonatomic, strong) id <TableCellDelegate> delegate;

@end
