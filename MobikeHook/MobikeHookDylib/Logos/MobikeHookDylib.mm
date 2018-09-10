#line 1 "/Users/dabao/Desktop/DynamicHook/MobikeHook/MobikeHookDylib/Logos/MobikeHookDylib.xm"


#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MBKManhattanViewController; 
static void (*_logos_orig$_ungrouped$MBKManhattanViewController$didTapUnlockButton$)(_LOGOS_SELF_TYPE_NORMAL MBKManhattanViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MBKManhattanViewController$didTapUnlockButton$(_LOGOS_SELF_TYPE_NORMAL MBKManhattanViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 5 "/Users/dabao/Desktop/DynamicHook/MobikeHook/MobikeHookDylib/Logos/MobikeHookDylib.xm"



static void _logos_method$_ungrouped$MBKManhattanViewController$didTapUnlockButton$(_LOGOS_SELF_TYPE_NORMAL MBKManhattanViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    HBLogDebug(@"-[<MBKManhattanViewController: %p> didTapUnlockButton:%@]", self, arg1);
    [[[UIAlertView alloc] initWithTitle:@"已经可以了" message:@"就是这个函数" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil] show];
    _logos_orig$_ungrouped$MBKManhattanViewController$didTapUnlockButton$(self, _cmd, arg1);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MBKManhattanViewController = objc_getClass("MBKManhattanViewController"); MSHookMessageEx(_logos_class$_ungrouped$MBKManhattanViewController, @selector(didTapUnlockButton:), (IMP)&_logos_method$_ungrouped$MBKManhattanViewController$didTapUnlockButton$, (IMP*)&_logos_orig$_ungrouped$MBKManhattanViewController$didTapUnlockButton$);} }
#line 16 "/Users/dabao/Desktop/DynamicHook/MobikeHook/MobikeHookDylib/Logos/MobikeHookDylib.xm"
