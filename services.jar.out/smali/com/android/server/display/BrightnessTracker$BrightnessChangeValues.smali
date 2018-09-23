.class Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessChangeValues"
.end annotation


# instance fields
.field final brightness:F

.field final isDefaultBrightnessConfig:Z

.field final isUserSetBrightness:Z

.field final powerBrightnessFactor:F

.field final timestamp:J


# direct methods
.method constructor <init>(FFZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    return-void
.end method
