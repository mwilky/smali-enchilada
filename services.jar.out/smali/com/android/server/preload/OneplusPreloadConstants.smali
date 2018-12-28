.class public Lcom/android/server/preload/OneplusPreloadConstants;
.super Ljava/lang/Object;
.source "OneplusPreloadConstants.java"


# static fields
.field public static final APP_BOOT_EVENT_INDEX:I = 0x3

.field public static final APP_EVENT_INDEX:I = 0x0

.field public static final APP_FORCE_STOPPED_INDEX:I = 0x5

.field public static final APP_PRELOAD_HIT_EVENT_INDEX:I = 0x4

.field public static final BATT_EVENT_INDEX:I = 0x2

.field public static final BATT_LEVEL:Ljava/lang/String; = "BattLevel"

.field public static final BLACKLIST_CONFIG_FILE:Ljava/lang/String; = "/data/system/app_preload/preload_black_list"

.field public static final CONFIG_CHANGED:I = 0x7

.field public static final INTENT_CLEAR_ALRM:Ljava/lang/String; = "com.oneplus.clear.alarm"

.field public static final INTENT_CLEAR_WAKELOCK:Ljava/lang/String; = "com.oneplus.clear.wakelock"

.field public static final KEY_HIT_WINDOW_LENGTH:Ljava/lang/String; = "hit_window"

.field public static final KEY_POLICY:Ljava/lang/String; = "enable_policy"

.field public static final KEY_WHITELIST:Ljava/lang/String; = "white_list"

.field public static final PKGNAME:Ljava/lang/String; = "PackageName"

.field public static final PRELOAD_HIGH_USED_AFTER_DIE:I = 0x6

.field public static final PRELOAD_ONLINE_CONFIG:Ljava/lang/String; = "AppPreload"

.field public static final SCREEN_EVENT_INDEX:I = 0x1

.field public static final SCREEN_MODE:Ljava/lang/String; = "ScreenMode"

.field public static final SCREEN_ON:Ljava/lang/String; = "ScreenOn"

.field public static final WHITELIST_CONFIG_FILE:Ljava/lang/String; = "/data/system/app_preload/preload_config"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
