.class public interface abstract annotation Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$BatteryUpdateType;
.super Ljava/lang/Object;
.source "BatteryBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BatteryUpdateType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BATTERY_LEVEL:I = 0x1

.field public static final BATTERY_SAVER:I = 0x2

.field public static final BATTERY_STATUS:I = 0x3

.field public static final MANUAL:I
