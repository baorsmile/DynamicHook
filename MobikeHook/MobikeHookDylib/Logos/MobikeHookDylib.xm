// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>

%hook MBKManhattanViewController

- (void)didTapUnlockButton:(id)arg1
{
    %log;
    [[[UIAlertView alloc] initWithTitle:@"已经可以了" message:@"就是这个函数" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil] show];
    %orig(arg1);
}

%end

