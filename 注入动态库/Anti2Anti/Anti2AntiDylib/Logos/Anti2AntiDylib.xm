
#import <UIKit/UIKit.h>

%hook ViewController

- (void)didTapRedButton:(id)org
{
    %log;
    NSLog(@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺");
    %orig(org);

    return %orig(a, b, c)
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"🥜🥜🥜🥜🥜🥜🥜🥜🍺🍺🍺🍺🍺🍺🍺");
}

%end

%hook MBKManhattanViewController

- (void)didTapUnlockButton:(id)arg1
{
    %log;
    %orig(arg1);
}
%end
