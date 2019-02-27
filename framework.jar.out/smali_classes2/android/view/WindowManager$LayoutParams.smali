.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final COLOR_MODE_CHANGED:I = 0x4000000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final INVALID_WINDOW_TYPE:I = -0x1

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEEDS_MENU_KEY_CHANGED:I = 0x400000

.field public static final NEEDS_MENU_SET_FALSE:I = 0x2

.field public static final NEEDS_MENU_SET_TRUE:I = 0x1

.field public static final NEEDS_MENU_UNSET:I = 0x0

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN:I = 0x200000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND:I = 0x20000

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT:I = 0x1000

.field public static final PRIVATE_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final PRIVATE_FLAG_IS_SCREEN_DECOR:I = 0x400000

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_PRESERVE_GEOMETRY:I = 0x2000

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRESENTATION:I = 0x7f5

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_QS_DIALOG:I = 0x7f3

.field public static final TYPE_SCREENSHOT:I = 0x7f4

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_FINGERPRINT:I = 0x901

.field public static final TYPE_SYSTEM_FINGERPRINT_DIM:I = 0x900

.field public static final TYPE_SYSTEM_FINGERPRINT_HIGH_LIGHT:I = 0x902

.field public static final TYPE_SYSTEM_LONGSHOT:I = 0x8ff

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public accessibilityIdOfAnchor:J

.field public accessibilityTitle:Ljava/lang/CharSequence;

.field public alpha:F

.field public buttonBrightness:F

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasSystemUiListeners:Z

.field public hideTimeoutMilliseconds:J

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field public layoutInDisplayCutoutMode:I

.field private mColorMode:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public needsMenuKey:I

.field public packageName:Ljava/lang/String;

.field public preferredDisplayModeId:I

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public preservePreviousSurfaceInsets:Z

.field public privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FAKE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "COMPATIBLE_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "INHERIT_TRANSLUCENT_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_STATUS_BAR_VISIBLE_TRANSPARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "PRESERVE_GEOMETRY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "WILL_NOT_REPLACE_ON_RELAUNCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "ACQUIRES_SLEEP_TOKEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "IS_SCREEN_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field public rotationAnimation:I

.field public screenBrightness:F

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2650
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 2487
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2488
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2489
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2490
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "_type"    # I

    .line 2493
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2494
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2495
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2496
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .line 2499
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2500
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2501
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2502
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2503
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .line 2506
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2507
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2508
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2509
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2510
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .line 2513
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2514
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2515
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2516
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2517
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .line 2521
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1853
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2522
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2523
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2524
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2525
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2526
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2527
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2662
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 1853
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2064
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2084
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2104
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2111
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2148
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2196
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2202
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2207
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2217
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2291
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2442
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2450
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2473
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2483
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2753
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3169
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2673
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 2674
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2677
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2678
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2679
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2680
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2682
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2684
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2686
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 2688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 2691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2692
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2693
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2694
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2695
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2696
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 2698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2700
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2701
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 2702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2703
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2704
    return-void
.end method

.method private static inputFeatureToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "inputFeature"    # I

    .line 3280
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 3288
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3284
    :pswitch_0
    const-string v0, "NO_INPUT_CHANNEL"

    return-object v0

    .line 3282
    :pswitch_1
    const-string v0, "DISABLE_POINTER_GESTURES"

    return-object v0

    .line 3286
    :cond_0
    const-string v0, "DISABLE_USER_ACTIVITY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSystemAlertWindowType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 1038
    sparse-switch p0, :sswitch_data_0

    .line 1047
    const/4 v0, 0x0

    return v0

    .line 1045
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7f6 -> :sswitch_0
    .end sparse-switch
.end method

.method private static layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 3197
    packed-switch p0, :pswitch_data_0

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3203
    :pswitch_0
    const-string/jumbo v0, "never"

    return-object v0

    .line 3201
    :pswitch_1
    const-string v0, "always"

    return-object v0

    .line 3199
    :pswitch_2
    const-string v0, "default"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mayUseInputMethod(I)Z
    .locals 2
    .param p0, "flags"    # I

    .line 1870
    const v0, 0x20008

    and-int v1, p0, v0

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1875
    const/4 v0, 0x0

    return v0

    .line 1873
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static rotationAnimationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "rotationAnimation"    # I

    .line 3263
    packed-switch p0, :pswitch_data_0

    .line 3275
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3273
    :pswitch_0
    const-string v0, "SEAMLESS"

    return-object v0

    .line 3271
    :pswitch_1
    const-string v0, "JUMPCUT"

    return-object v0

    .line 3269
    :pswitch_2
    const-string v0, "CROSSFADE"

    return-object v0

    .line 3267
    :pswitch_3
    const-string v0, "ROTATE"

    return-object v0

    .line 3265
    :pswitch_4
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static softInputModeToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "softInputMode"    # I

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3211
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    .line 3212
    .local v1, "state":I
    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 3213
    const-string/jumbo v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    packed-switch v1, :pswitch_data_0

    .line 3231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3228
    :pswitch_0
    const-string v3, "always_visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    goto :goto_0

    .line 3225
    :pswitch_1
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    goto :goto_0

    .line 3222
    :pswitch_2
    const-string v3, "always_hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    goto :goto_0

    .line 3219
    :pswitch_3
    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    goto :goto_0

    .line 3216
    :pswitch_4
    const-string/jumbo v3, "unchanged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    nop

    .line 3234
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3236
    :cond_0
    and-int/lit16 v3, p0, 0xf0

    .line 3237
    .local v3, "adjust":I
    if-eqz v3, :cond_4

    .line 3238
    const-string v4, "adjust="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    if-eq v3, v2, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 3250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3247
    :cond_1
    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    goto :goto_1

    .line 3244
    :cond_2
    const-string/jumbo v4, "pan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3245
    goto :goto_1

    .line 3241
    :cond_3
    const-string/jumbo v4, "resize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    nop

    .line 3253
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3255
    :cond_4
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_5

    .line 3256
    const-string v4, "forwardNavigation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3258
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method backup()V
    .locals 3

    .line 3144
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3145
    .local v0, "backup":[I
    if-nez v0, :cond_0

    .line 3147
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    move-object v0, v1

    .line 3149
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 3150
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 3151
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 3152
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 3153
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .line 2756
    const/4 v0, 0x0

    .line 2758
    .local v0, "changes":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    .line 2759
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2760
    or-int/lit8 v0, v0, 0x1

    .line 2762
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    .line 2763
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2764
    or-int/lit8 v0, v0, 0x1

    .line 2766
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_2

    .line 2767
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2768
    or-int/lit8 v0, v0, 0x1

    .line 2770
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_3

    .line 2771
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2772
    or-int/lit8 v0, v0, 0x1

    .line 2774
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 2775
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 2776
    or-int/lit8 v0, v0, 0x1

    .line 2778
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 2779
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 2780
    or-int/lit8 v0, v0, 0x1

    .line 2782
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 2783
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 2784
    or-int/lit8 v0, v0, 0x1

    .line 2786
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 2787
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2788
    or-int/lit8 v0, v0, 0x1

    .line 2790
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_8

    .line 2791
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2792
    or-int/lit8 v0, v0, 0x2

    .line 2794
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_a

    .line 2795
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    .line 2796
    .local v1, "diff":I
    const/high16 v2, 0xc000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 2797
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 2799
    :cond_9
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2800
    or-int/lit8 v0, v0, 0x4

    .line 2802
    .end local v1    # "diff":I
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v1, v2, :cond_b

    .line 2803
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2804
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 2806
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_c

    .line 2807
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2808
    or-int/lit16 v0, v0, 0x200

    .line 2810
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_d

    .line 2811
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2812
    or-int/lit8 v0, v0, 0x1

    .line 2814
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_e

    .line 2815
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2816
    or-int/lit8 v0, v0, 0x1

    .line 2818
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_f

    .line 2819
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2820
    or-int/lit8 v0, v0, 0x8

    .line 2822
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_10

    .line 2823
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2824
    or-int/lit8 v0, v0, 0x10

    .line 2826
    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_11

    .line 2829
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2831
    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 2834
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2836
    :cond_12
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    .line 2838
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2839
    or-int/lit8 v0, v0, 0x40

    .line 2841
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    .line 2842
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2843
    or-int/lit16 v0, v0, 0x80

    .line 2845
    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 2846
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2847
    or-int/lit8 v0, v0, 0x20

    .line 2849
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_16

    .line 2850
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2851
    or-int/lit16 v0, v0, 0x800

    .line 2853
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    .line 2854
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2855
    or-int/lit16 v0, v0, 0x2000

    .line 2857
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_18

    .line 2858
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2859
    or-int/lit16 v0, v0, 0x1000

    .line 2862
    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_19

    .line 2863
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2864
    or-int/lit16 v0, v0, 0x400

    .line 2867
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1a

    .line 2868
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2869
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2872
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_1b

    .line 2873
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 2874
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 2877
    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_1c

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v2, :cond_1d

    .line 2879
    :cond_1c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2880
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2881
    or-int/lit16 v0, v0, 0x4000

    .line 2884
    :cond_1d
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_1e

    .line 2885
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 2886
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 2889
    :cond_1e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v2, :cond_1f

    .line 2890
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2891
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 2894
    :cond_1f
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 2895
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2896
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 2899
    :cond_20
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_21

    .line 2900
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2901
    or-int/2addr v0, v2

    .line 2904
    :cond_21
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v3, :cond_22

    .line 2905
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 2906
    or-int/2addr v0, v2

    .line 2909
    :cond_22
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v3, :cond_23

    .line 2910
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2911
    or-int/2addr v0, v2

    .line 2914
    :cond_23
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eq v1, v2, :cond_24

    .line 2915
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 2916
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 2919
    :cond_24
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 2920
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2921
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 2924
    :cond_25
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_26

    .line 2927
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 2928
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 2931
    :cond_26
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eq v1, v2, :cond_27

    .line 2932
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2933
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 2937
    :cond_27
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2939
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "output"    # Ljava/lang/String;

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2945
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2947
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    const-string v0, "Debug"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 2603
    const/4 v0, 0x0

    return v0
.end method

.method public dumpDimensions(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2962
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2963
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2964
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2965
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2966
    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "fill"

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_1

    .line 2968
    const-string/jumbo v0, "wrap"

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2967
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2970
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v2, :cond_2

    const-string v0, "fill"

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_3

    .line 2971
    const-string/jumbo v0, "wrap"

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2970
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 3174
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 3176
    const-string/jumbo v0, "x"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3177
    const-string/jumbo v0, "y"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3178
    const-string v0, "horizontalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 3179
    const-string/jumbo v0, "verticalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 3180
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3181
    const-string v0, "flags"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3182
    return-void
.end method

.method public getColorMode()I
    .locals 1

    .line 2587
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 2537
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getUserActivityTimeout()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2599
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public isFullscreen()Z
    .locals 2

    .line 3190
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method restore()V
    .locals 2

    .line 3160
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 3161
    .local v0, "backup":[I
    if-eqz v0, :cond_0

    .line 3162
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3163
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3164
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3165
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3167
    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 3129
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3130
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3131
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 3132
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3134
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 3135
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3137
    :cond_1
    return-void
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 2576
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 2577
    return-void
.end method

.method public final setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "manual"    # Z
    .param p3, "preservePrevious"    # Z

    .line 2545
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2551
    .local v0, "surfaceInset":I
    if-nez v0, :cond_0

    .line 2553
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 2555
    :cond_0
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2556
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2557
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 2558
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 2559
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2555
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2561
    :goto_0
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 2562
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 2563
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 2530
    if-nez p1, :cond_0

    .line 2531
    const-string p1, ""

    .line 2533
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2534
    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2593
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2594
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2955
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2980
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2981
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 2982
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2983
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2986
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 2987
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2990
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_2

    .line 2991
    const-string v1, " gr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v3, 0x7d

    if-eqz v1, :cond_3

    .line 2995
    const-string v1, " sim={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2999
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v1, :cond_4

    .line 3000
    const-string v1, " layoutInDisplayCutoutMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    :cond_4
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "type"

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v1, v4, v5}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 3006
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_6

    .line 3010
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v4, :cond_7

    .line 3014
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 3018
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3021
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    .line 3022
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3025
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_a

    .line 3026
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3029
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_b

    .line 3030
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    .line 3034
    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3037
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v1, :cond_d

    .line 3038
    const-string v1, " preferredDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3041
    :cond_d
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_e

    .line 3042
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3045
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_f

    .line 3046
    const-string v1, " if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->inputFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    :cond_f
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-ltz v1, :cond_10

    .line 3049
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3051
    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_11

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_13

    .line 3054
    :cond_11
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3055
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v1, :cond_12

    .line 3056
    const-string v1, " (manual)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    :cond_12
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_13

    .line 3059
    const-string v1, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 3063
    const-string v1, " needsMenuKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v1, :cond_15

    .line 3066
    const-string v1, " colorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    :cond_15
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  fl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "flags"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3070
    invoke-static {v1, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_16

    .line 3072
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  pfl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "privateFlags"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_17

    .line 3077
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  sysui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mSystemUiVisibility"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_18

    .line 3082
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  vsysui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mSystemUiVisibility"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    :cond_18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 2607
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2608
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2610
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2611
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2612
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2616
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2618
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2619
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2621
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2622
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2623
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2624
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2625
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2627
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2628
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2629
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2630
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2631
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2632
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2635
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2637
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2639
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2642
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2645
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2646
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2648
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3094
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3095
    .local v0, "token":J
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3096
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3097
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3098
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3099
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3100
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-wide v3, 0x10200000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3101
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const-wide v3, 0x10200000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3102
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3103
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3104
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3105
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3106
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-wide v3, 0x1020000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3107
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-wide v3, 0x1020000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3108
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const-wide v3, 0x1020000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3109
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-wide v3, 0x10e0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3110
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const-wide v3, 0x10200000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3111
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3112
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const-wide v3, 0x10800000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3113
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide v3, 0x10d00000013L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3114
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3115
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const-wide v3, 0x10e00000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3116
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const-wide v3, 0x10e00000017L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3117
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-wide v3, 0x10d00000018L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3118
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide v3, 0x10d0000001aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3119
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-wide v3, 0x10d0000001bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3120
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    const-wide v3, 0x10d0000001cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3121
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3122
    return-void
.end method
