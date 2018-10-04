.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x80

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    const/16 v6, 0x80

    const/16 v7, 0x8

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-float v1, v1

    neg-float v3, v3

    neg-float v5, v5

    goto :goto_0

    :cond_0
    :pswitch_1
    neg-float v5, v5

    goto :goto_0

    :cond_1
    neg-float v1, v1

    neg-float v3, v3

    :goto_0
    aput v1, p2, v0

    aput v3, p2, v2

    aput v5, p2, v4

    const/4 v8, 0x3

    aput v1, p2, v8

    const/4 v8, 0x4

    aput v3, p2, v8

    const/4 v8, 0x5

    aput v5, p2, v8

    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :cond_2
    :pswitch_2
    const/high16 v8, 0x43870000    # 270.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_3

    const/16 v8, 0x5a

    goto :goto_1

    :cond_3
    const/16 v8, -0x10e

    :goto_1
    int-to-float v8, v8

    add-float/2addr v8, v1

    aput v8, p2, v0

    aput v5, p2, v2

    aput v3, p2, v4

    goto :goto_2

    :cond_4
    :pswitch_3
    neg-float v8, v3

    aput v8, p2, v0

    aput v1, p2, v2

    aput v5, p2, v4

    nop

    :cond_5
    :goto_2
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_9

    aget v1, p2, v0

    aget v3, p2, v2

    aget v5, p2, v4

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_6

    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :cond_6
    :pswitch_4
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v7, v1, v6

    if-ltz v7, :cond_7

    sub-float v6, v1, v6

    goto :goto_3

    :cond_7
    add-float/2addr v6, v1

    :goto_3
    aput v6, p2, v0

    neg-float v0, v3

    aput v0, p2, v2

    neg-float v0, v5

    aput v0, p2, v4

    goto :goto_4

    :cond_8
    :pswitch_5
    neg-float v6, v1

    aput v6, p2, v0

    neg-float v0, v3

    aput v0, p2, v2

    aput v5, p2, v4

    nop

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method hasSensors()Z
    .locals 1

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v4

    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    iget v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v5, v6, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_0
    iget v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v8, v0, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v5

    aput v5, v0, v2

    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method registerSensor(I)Z
    .locals 3

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method unregisterSensor(I)Z
    .locals 3

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
