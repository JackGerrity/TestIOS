//
//  XYZToDoList TableViewController.h
//  ToDoList
//
//  Created by Jack Gerrity on 5/8/14.
//
//

#import <UIKit/UIKit.h>
#import "XYZToDoItem.h"

@interface XYZToDoList_TableViewController : UITableViewController

@property XYZToDoItem *toDoItem;
- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
@end
