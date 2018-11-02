.class public interface abstract annotation Lcom/android/settings/fuelgauge/batterytip/StatsManagerConfig$AnomalyType;
.super Ljava/lang/Object;
.source "StatsManagerConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/StatsManagerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AnomalyType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BACKGROUND_ANR:I = 0x14

.field public static final BACKGROUND_CRASH_RATE:I = 0x15

.field public static final EXCESSIVE_ANRS:I = 0x17

.field public static final EXCESSIVE_ANR_LOOPING:I = 0x16

.field public static final EXCESSIVE_BACKGROUND_SERVICE:I = 0x4

.field public static final EXCESSIVE_BACKGROUND_SYNCS:I = 0xd

.field public static final EXCESSIVE_CRASH_LOOPING:I = 0x19

.field public static final EXCESSIVE_CRASH_RATE:I = 0x18

.field public static final EXCESSIVE_DAVEY_RATE:I = 0x8

.field public static final EXCESSIVE_FLASH_WRITES:I = 0x6

.field public static final EXCESSIVE_GPS_SCANS_IN_BACKGROUND:I = 0xe

.field public static final EXCESSIVE_JANKY_FRAMES:I = 0x9

.field public static final EXCESSIVE_JOB_SCHEDULING:I = 0xf

.field public static final EXCESSIVE_MEMORY_IN_BACKGROUND:I = 0x7

.field public static final EXCESSIVE_MOBILE_NETWORK_IN_BACKGROUND:I = 0x10

.field public static final EXCESSIVE_UNOPTIMIZED_BLE_SCAN:I = 0x3

.field public static final EXCESSIVE_WAKELOCK_ALL_SCREEN_OFF:I = 0x1

.field public static final EXCESSIVE_WAKEUPS_IN_BACKGROUND:I = 0x2

.field public static final EXCESSIVE_WIFI_LOCK_TIME:I = 0x11

.field public static final EXCESSIVE_WIFI_SCAN:I = 0x5

.field public static final JOB_TIMED_OUT:I = 0x12

.field public static final LONG_UNOPTIMIZED_BLE_SCAN:I = 0x13

.field public static final NULL:I = -0x1

.field public static final NUMBER_OF_OPEN_FILES:I = 0x1a

.field public static final SLOW_COLD_START_TIME:I = 0xa

.field public static final SLOW_HOT_START_TIME:I = 0xb

.field public static final SLOW_WARM_START_TIME:I = 0xc

.field public static final UNKNOWN_REASON:I
