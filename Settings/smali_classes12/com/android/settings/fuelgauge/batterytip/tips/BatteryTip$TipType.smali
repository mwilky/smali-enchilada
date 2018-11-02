.class public interface abstract annotation Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip$TipType;
.super Ljava/lang/Object;
.source "BatteryTip.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TipType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final APP_RESTRICTION:I = 0x1

.field public static final BATTERY_SAVER:I = 0x3

.field public static final HIGH_DEVICE_USAGE:I = 0x2

.field public static final LOW_BATTERY:I = 0x5

.field public static final REDUCED_BATTERY:I = 0x4

.field public static final REMOVE_APP_RESTRICTION:I = 0x7

.field public static final SMART_BATTERY_MANAGER:I = 0x0

.field public static final SUMMARY:I = 0x6
