#line 1 "Tweak.xm"
#define domain @"ru.bestk1ng.smallsiri"
#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
#define isX (kHeight >= 812)

@interface UIView (ss)
-(id)_viewControllerForAncestor;
@end

@interface SBAssistantWindow : UIWindow
-(void)didSwipeUp;
-(void)didSwipeDown;
-(void)expandSiriView;
-(void)closeSiriView;
@end

@interface UIStatusBar : UIView
@property (nonatomic, retain) UIColor *foregroundColor;
@end

@interface _UIStatusBar : UIView
@property (nonatomic, retain) UIColor *foregroundColor;
@end

@interface _UIRemoteView : UIView
@end

@interface MTLumaDodgePillView : UIView
@end

@interface SiriUISiriStatusView : UIView
@end

@interface SpringBoard
-(void)_simulateHomeButtonPress;
@end

@interface SiriUIHelpButton : UIView
@end

@interface SUICFlamesView : UIView
@end

@interface NSUserDefaults (inDomain)
-(id)objectForKey:(id)arg1 inDomain:(id)arg2 ;
@end

static NSString* turnOnKey = @"turnOn";
static NSString* bottomModeKey = @"bottomMode";

static CGFloat yChange = 0;
static UISwipeGestureRecognizer* swipeUpGesture;
static UISwipeGestureRecognizer* swipeDownGesture;
static SiriUISiriStatusView* status;
static SiriUIHelpButton* helpButton;
static SUICFlamesView* flames;
static _UIRemoteView* remote;
static BOOL hasExpanded = NO;
static UIView* statusBar;
static UIView* sbSuperview;

static BOOL getPrefBool(NSString* key, BOOL fallback)
{
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:key inDomain:domain];
    return value ? [value boolValue] : fallback;
}



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

@class SBAssistantWindow; @class MTLumaDodgePillView; @class SiriUIHelpButton; @class _UIStatusBar; @class UIStatusBar; @class SiriUISiriStatusView; @class SUICFlamesView; @class UIApplication; @class _UIRemoteView; 
static void (*_logos_orig$_ungrouped$SBAssistantWindow$becomeKeyWindow)(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$becomeKeyWindow(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBAssistantWindow$dealloc)(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$dealloc(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$closeSiriView(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$expandSiriView(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$didSwipeUp(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBAssistantWindow$didSwipeDown(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIStatusBar$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBar$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static SiriUISiriStatusView* (*_logos_orig$_ungrouped$SiriUISiriStatusView$init)(_LOGOS_SELF_TYPE_INIT SiriUISiriStatusView*, SEL) _LOGOS_RETURN_RETAINED; static SiriUISiriStatusView* _logos_method$_ungrouped$SiriUISiriStatusView$init(_LOGOS_SELF_TYPE_INIT SiriUISiriStatusView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SiriUISiriStatusView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SiriUISiriStatusView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SiriUISiriStatusView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SiriUISiriStatusView* _LOGOS_SELF_CONST, SEL); static SiriUIHelpButton* (*_logos_orig$_ungrouped$SiriUIHelpButton$init)(_LOGOS_SELF_TYPE_INIT SiriUIHelpButton*, SEL) _LOGOS_RETURN_RETAINED; static SiriUIHelpButton* _logos_method$_ungrouped$SiriUIHelpButton$init(_LOGOS_SELF_TYPE_INIT SiriUIHelpButton*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SiriUIHelpButton$setFrame$)(_LOGOS_SELF_TYPE_NORMAL SiriUIHelpButton* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$SiriUIHelpButton$setFrame$(_LOGOS_SELF_TYPE_NORMAL SiriUIHelpButton* _LOGOS_SELF_CONST, SEL, CGRect); static SUICFlamesView* (*_logos_orig$_ungrouped$SUICFlamesView$init)(_LOGOS_SELF_TYPE_INIT SUICFlamesView*, SEL) _LOGOS_RETURN_RETAINED; static SUICFlamesView* _logos_method$_ungrouped$SUICFlamesView$init(_LOGOS_SELF_TYPE_INIT SUICFlamesView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SUICFlamesView$setActiveFrame$)(_LOGOS_SELF_TYPE_NORMAL SUICFlamesView* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$SUICFlamesView$setActiveFrame$(_LOGOS_SELF_TYPE_NORMAL SUICFlamesView* _LOGOS_SELF_CONST, SEL, CGRect); static void (*_logos_orig$_ungrouped$MTLumaDodgePillView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MTLumaDodgePillView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIRemoteView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL _UIRemoteView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIRemoteView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL _UIRemoteView* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$UIApplication(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("UIApplication"); } return _klass; }
#line 69 "Tweak.xm"


static void _logos_method$_ungrouped$SBAssistantWindow$becomeKeyWindow(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBAssistantWindow$becomeKeyWindow(self, _cmd);
    if ((!hasExpanded) && (getPrefBool(turnOnKey, YES)))
    {
        CGFloat yF = isX ? 44 : 20;
        if (getPrefBool(bottomModeKey, NO))
        {
            self.frame = CGRectMake(10, kHeight - 100, kWidth - 20, 90);
        }
        else
        {
            self.frame = CGRectMake(10, yF, kWidth - 20, 90);
        }
        self.subviews[0].layer.cornerRadius = 15;
        self.subviews[0].clipsToBounds = YES;

        
        swipeUpGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeUp)];
        swipeUpGesture.direction = UISwipeGestureRecognizerDirectionUp;
        [self.subviews[0] addGestureRecognizer:swipeUpGesture];

        
        swipeDownGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeDown)];
        swipeDownGesture.direction = UISwipeGestureRecognizerDirectionDown;
        [self.subviews[0] addGestureRecognizer:swipeDownGesture];
    }
}


static void _logos_method$_ungrouped$SBAssistantWindow$dealloc(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBAssistantWindow$dealloc(self, _cmd);
    hasExpanded = NO;
}



static void _logos_method$_ungrouped$SBAssistantWindow$closeSiriView(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (!hasExpanded)
    {
        
        [UIView animateWithDuration:0.3f animations:^{
            
            if (getPrefBool(bottomModeKey, NO))
            {
              self.subviews[0].center = CGPointMake(self.subviews[0].center.x, 180);
            }
            else
            {
              self.subviews[0].center = CGPointMake(self.subviews[0].center.x, -90);
            }

        } completion:^(BOOL finished) {
            
            [(SpringBoard *)[_logos_static_class_lookup$UIApplication() sharedApplication] _simulateHomeButtonPress];
        }];
    }
}



static void _logos_method$_ungrouped$SBAssistantWindow$expandSiriView(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (!hasExpanded)
    {
        
        [UIView animateWithDuration:0.5f animations:^{
            
            self.frame = CGRectMake(0, 0, kWidth, kHeight);
        } completion:^(BOOL finished) {
            

            for (UIView* v in status.subviews)
            {
                if ([v isMemberOfClass:[UIButton class]])
                {
                    
                    v.frame = CGRectMake(0, 0, v.frame.size.width, v.frame.size.height);
                }
                else
                {
                    
                    v.frame = CGRectMake(v.frame.origin.x, v.frame.origin.y + yChange, v.frame.size.width, v.frame.size.height);
                }
            }

            
            self.subviews[0].layer.cornerRadius = 0;
            self.subviews[0].clipsToBounds = NO;

            
            helpButton.frame = CGRectMake(helpButton.frame.origin.x, helpButton.frame.origin.y + yChange, self.frame.size.width, helpButton.frame.size.height);

            
            flames.frame = CGRectMake(flames.frame.origin.x, flames.frame.origin.y + yChange, flames.frame.size.width, flames.frame.size.height);

            
            remote.hidden = NO;

            
            [sbSuperview addSubview:statusBar];
        }];
        hasExpanded = YES;
    }
}



static void _logos_method$_ungrouped$SBAssistantWindow$didSwipeUp(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (getPrefBool(bottomModeKey, NO))
    {
        [self expandSiriView];
    }
    else
    {
        [self closeSiriView];
    }
}



static void _logos_method$_ungrouped$SBAssistantWindow$didSwipeDown(_LOGOS_SELF_TYPE_NORMAL SBAssistantWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (getPrefBool(bottomModeKey, NO))
    {
        [self closeSiriView];
    }
    else
    {
        [self expandSiriView];
    }
}






static void _logos_method$_ungrouped$UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UIStatusBar$didMoveToWindow(self, _cmd);
    if ([[self window] isMemberOfClass:objc_getClass("SBAssistantWindow")] && !hasExpanded)
    {
        statusBar = self;
        sbSuperview = self.superview;
        [self removeFromSuperview];
    }
}




static void _logos_method$_ungrouped$_UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$_UIStatusBar$didMoveToWindow(self, _cmd);
    if ([[self window] isMemberOfClass:objc_getClass("SBAssistantWindow")] && !hasExpanded)
    {
        statusBar = self;
        sbSuperview = self.superview;
        [self removeFromSuperview];
    }
}


inline CGRect worldFrameOfView(UIView* aView)
{
    return [[aView superview] convertRect:aView.frame toView:nil];
}




static SiriUISiriStatusView* _logos_method$_ungrouped$SiriUISiriStatusView$init(_LOGOS_SELF_TYPE_INIT SiriUISiriStatusView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    self = _logos_orig$_ungrouped$SiriUISiriStatusView$init(self, _cmd);
    if (self)
    {
        status = self;
    }
    return self;
}


static void _logos_method$_ungrouped$SiriUISiriStatusView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SiriUISiriStatusView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SiriUISiriStatusView$layoutSubviews(self, _cmd);
    if (!hasExpanded)
    {
        
        for (UIView* v in self.subviews)
        {
            if ([v isMemberOfClass:[UIButton class]])
            {
                
                yChange = worldFrameOfView(v).origin.y;
                yChange -= (self.frame.size.height - v.frame.size.height); 
                v.frame = CGRectMake(0, yChange * -1, v.frame.size.width, v.frame.size.height);
                
                for (UIView* b in self.subviews)
                {
                    if (![b isMemberOfClass:[UIButton class]])
                    {
                        
                        b.frame = CGRectMake(b.frame.origin.x, b.frame.origin.y - yChange, b.frame.size.width, b.frame.size.height);
                        break;
                    }
                }
                break;
            }
        }
    }
}





static SiriUIHelpButton* _logos_method$_ungrouped$SiriUIHelpButton$init(_LOGOS_SELF_TYPE_INIT SiriUIHelpButton* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    self = _logos_orig$_ungrouped$SiriUIHelpButton$init(self, _cmd);
    if (self)
    {
        helpButton = self;
    }
    return self;
}


static void _logos_method$_ungrouped$SiriUIHelpButton$setFrame$(_LOGOS_SELF_TYPE_NORMAL SiriUIHelpButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1) {
    if (!hasExpanded)
    {
        arg1 = CGRectMake(arg1.origin.x, arg1.origin.y - yChange, arg1.size.width, arg1.size.height);
    }
    _logos_orig$_ungrouped$SiriUIHelpButton$setFrame$(self, _cmd, arg1);
}





static SUICFlamesView* _logos_method$_ungrouped$SUICFlamesView$init(_LOGOS_SELF_TYPE_INIT SUICFlamesView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    self = _logos_orig$_ungrouped$SUICFlamesView$init(self, _cmd);
    if (self)
    {
        flames = self;
    }
    return self;
}


static void _logos_method$_ungrouped$SUICFlamesView$setActiveFrame$(_LOGOS_SELF_TYPE_NORMAL SUICFlamesView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1) {
    if (!hasExpanded)
    {
        arg1 = CGRectMake(arg1.origin.x, arg1.origin.y - yChange, arg1.size.width, arg1.size.height);
    }
    _logos_orig$_ungrouped$SUICFlamesView$setActiveFrame$(self, _cmd, arg1);
}





static void _logos_method$_ungrouped$MTLumaDodgePillView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$MTLumaDodgePillView$didMoveToWindow(self, _cmd);
    if ([[[UIApplication sharedApplication] keyWindow] isMemberOfClass:objc_getClass("SBAssistantWindow")] && !hasExpanded)
    {
        [self removeFromSuperview];
    }
}





static void _logos_method$_ungrouped$_UIRemoteView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL _UIRemoteView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$_UIRemoteView$didMoveToSuperview(self, _cmd);
    if ([[self _viewControllerForAncestor] isMemberOfClass:objc_getClass("AFUISiriRemoteViewController")] && !hasExpanded)
    {
        remote = self;
        self.hidden = YES;
    }
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBAssistantWindow = objc_getClass("SBAssistantWindow"); MSHookMessageEx(_logos_class$_ungrouped$SBAssistantWindow, @selector(becomeKeyWindow), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$becomeKeyWindow, (IMP*)&_logos_orig$_ungrouped$SBAssistantWindow$becomeKeyWindow);MSHookMessageEx(_logos_class$_ungrouped$SBAssistantWindow, sel_registerName("dealloc"), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$dealloc, (IMP*)&_logos_orig$_ungrouped$SBAssistantWindow$dealloc);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBAssistantWindow, @selector(closeSiriView), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$closeSiriView, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBAssistantWindow, @selector(expandSiriView), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$expandSiriView, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBAssistantWindow, @selector(didSwipeUp), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$didSwipeUp, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBAssistantWindow, @selector(didSwipeDown), (IMP)&_logos_method$_ungrouped$SBAssistantWindow$didSwipeDown, _typeEncoding); }Class _logos_class$_ungrouped$UIStatusBar = objc_getClass("UIStatusBar"); MSHookMessageEx(_logos_class$_ungrouped$UIStatusBar, @selector(didMoveToWindow), (IMP)&_logos_method$_ungrouped$UIStatusBar$didMoveToWindow, (IMP*)&_logos_orig$_ungrouped$UIStatusBar$didMoveToWindow);Class _logos_class$_ungrouped$_UIStatusBar = objc_getClass("_UIStatusBar"); MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBar, @selector(didMoveToWindow), (IMP)&_logos_method$_ungrouped$_UIStatusBar$didMoveToWindow, (IMP*)&_logos_orig$_ungrouped$_UIStatusBar$didMoveToWindow);Class _logos_class$_ungrouped$SiriUISiriStatusView = objc_getClass("SiriUISiriStatusView"); MSHookMessageEx(_logos_class$_ungrouped$SiriUISiriStatusView, @selector(init), (IMP)&_logos_method$_ungrouped$SiriUISiriStatusView$init, (IMP*)&_logos_orig$_ungrouped$SiriUISiriStatusView$init);MSHookMessageEx(_logos_class$_ungrouped$SiriUISiriStatusView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SiriUISiriStatusView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SiriUISiriStatusView$layoutSubviews);Class _logos_class$_ungrouped$SiriUIHelpButton = objc_getClass("SiriUIHelpButton"); MSHookMessageEx(_logos_class$_ungrouped$SiriUIHelpButton, @selector(init), (IMP)&_logos_method$_ungrouped$SiriUIHelpButton$init, (IMP*)&_logos_orig$_ungrouped$SiriUIHelpButton$init);MSHookMessageEx(_logos_class$_ungrouped$SiriUIHelpButton, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$SiriUIHelpButton$setFrame$, (IMP*)&_logos_orig$_ungrouped$SiriUIHelpButton$setFrame$);Class _logos_class$_ungrouped$SUICFlamesView = objc_getClass("SUICFlamesView"); MSHookMessageEx(_logos_class$_ungrouped$SUICFlamesView, @selector(init), (IMP)&_logos_method$_ungrouped$SUICFlamesView$init, (IMP*)&_logos_orig$_ungrouped$SUICFlamesView$init);MSHookMessageEx(_logos_class$_ungrouped$SUICFlamesView, @selector(setActiveFrame:), (IMP)&_logos_method$_ungrouped$SUICFlamesView$setActiveFrame$, (IMP*)&_logos_orig$_ungrouped$SUICFlamesView$setActiveFrame$);Class _logos_class$_ungrouped$MTLumaDodgePillView = objc_getClass("MTLumaDodgePillView"); MSHookMessageEx(_logos_class$_ungrouped$MTLumaDodgePillView, @selector(didMoveToWindow), (IMP)&_logos_method$_ungrouped$MTLumaDodgePillView$didMoveToWindow, (IMP*)&_logos_orig$_ungrouped$MTLumaDodgePillView$didMoveToWindow);Class _logos_class$_ungrouped$_UIRemoteView = objc_getClass("_UIRemoteView"); MSHookMessageEx(_logos_class$_ungrouped$_UIRemoteView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$_UIRemoteView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$_UIRemoteView$didMoveToSuperview);} }
#line 346 "Tweak.xm"
