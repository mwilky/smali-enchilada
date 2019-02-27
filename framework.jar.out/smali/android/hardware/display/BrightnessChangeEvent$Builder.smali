.class public Landroid/hardware/display/BrightnessChangeEvent$Builder;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBatteryLevel:F

.field private mBrightness:F

.field private mColorTemperature:I

.field private mIsDefaultBrightnessConfig:Z

.field private mIsUserSetBrightness:Z

.field private mLastBrightness:F

.field private mLuxTimestamps:[J

.field private mLuxValues:[F

.field private mNightMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mPowerBrightnessFactor:F

.field private mTimeStamp:J

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/display/BrightnessChangeEvent;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Landroid/hardware/display/BrightnessChangeEvent;

    iget v2, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    iget-wide v3, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    iget-object v5, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    iget v6, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    iget-object v7, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    iget-object v8, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    iget v9, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    iget v10, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    iget-boolean v11, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    iget v12, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    iget v13, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    iget-boolean v14, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    iget-boolean v15, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;I[F[JFFZIFZZLandroid/hardware/display/BrightnessChangeEvent$1;)V

    return-object v17
.end method

.method public setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    return-object p0
.end method

.method public setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    return-object p0
.end method

.method public setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    return-object p0
.end method

.method public setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    return-object p0
.end method

.method public setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    return-object p0
.end method

.method public setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    return-object p0
.end method

.method public setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    return-object p0
.end method

.method public setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    return-object p0
.end method

.method public setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    return-object p0
.end method

.method public setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    return-object p0
.end method

.method public setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    return-object p0
.end method
