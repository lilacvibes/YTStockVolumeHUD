#line 1 "Tweak.xm"

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

@class UIApplication; @class YTVolumeBarView; 
static void (*_logos_orig$_ungrouped$YTVolumeBarView$volumeChanged$)(_LOGOS_SELF_TYPE_NORMAL YTVolumeBarView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTVolumeBarView$volumeChanged$(_LOGOS_SELF_TYPE_NORMAL YTVolumeBarView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$)(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, BOOL, id); static void _logos_method$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST, SEL, BOOL, id); 

#line 1 "Tweak.xm"


static void _logos_method$_ungrouped$YTVolumeBarView$volumeChanged$(_LOGOS_SELF_TYPE_NORMAL YTVolumeBarView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {

	_logos_orig$_ungrouped$YTVolumeBarView$volumeChanged$(self, _cmd, nil);

}



 

static void _logos_method$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$(_LOGOS_SELF_TYPE_NORMAL UIApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1, id arg2) {

	_logos_orig$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$(self, _cmd, true, arg2);

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTVolumeBarView = objc_getClass("YTVolumeBarView"); MSHookMessageEx(_logos_class$_ungrouped$YTVolumeBarView, @selector(volumeChanged:), (IMP)&_logos_method$_ungrouped$YTVolumeBarView$volumeChanged$, (IMP*)&_logos_orig$_ungrouped$YTVolumeBarView$volumeChanged$);Class _logos_class$_ungrouped$UIApplication = objc_getClass("UIApplication"); MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(setSystemVolumeHUDEnabled:forAudioCategory:), (IMP)&_logos_method$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$, (IMP*)&_logos_orig$_ungrouped$UIApplication$setSystemVolumeHUDEnabled$forAudioCategory$);} }
#line 20 "Tweak.xm"
