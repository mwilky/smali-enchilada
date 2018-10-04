.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final sTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static getAltitude(FF)F
    .locals 5

    const v0, 0x3e42dcae

    div-float v1, p1, p0

    float-to-double v1, v1

    const-wide v3, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const v1, 0x472d2a00    # 44330.0f

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v2

    array-length v2, v0

    const/16 v26, 0xa

    move/from16 v27, v3

    const/16 v28, 0x7

    const/16 v29, 0x3

    const/16 v30, 0x8

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v3, 0x9

    const/16 v34, 0x2

    const/16 v35, 0x1

    const/16 v36, 0x0

    if-ne v2, v3, :cond_0

    aget v7, v0, v36

    aget v8, v0, v35

    aget v9, v0, v34

    aget v10, v0, v29

    aget v11, v0, v33

    aget v12, v0, v32

    aget v13, v0, v31

    aget v14, v0, v28

    aget v15, v0, v30

    move v2, v3

    goto :goto_0

    :cond_0
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    aget v7, v0, v36

    aget v8, v0, v35

    aget v9, v0, v34

    aget v10, v0, v33

    aget v11, v0, v32

    aget v12, v0, v31

    aget v13, v0, v30

    const/16 v2, 0x9

    aget v14, v0, v2

    aget v15, v0, v26

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    :goto_0
    array-length v3, v1

    if-ne v3, v2, :cond_2

    aget v16, v1, v36

    aget v17, v1, v35

    aget v18, v1, v34

    aget v19, v1, v29

    aget v20, v1, v33

    aget v21, v1, v32

    aget v22, v1, v31

    aget v23, v1, v28

    aget v24, v1, v30

    goto :goto_1

    :cond_2
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    aget v16, v1, v36

    aget v17, v1, v35

    aget v18, v1, v34

    aget v19, v1, v33

    aget v20, v1, v32

    aget v21, v1, v31

    aget v22, v1, v30

    const/16 v2, 0x9

    aget v23, v1, v2

    aget v24, v1, v26

    :cond_3
    :goto_1
    mul-float v2, v16, v8

    mul-float v3, v19, v11

    add-float/2addr v2, v3

    mul-float v3, v22, v14

    add-float/2addr v2, v3

    mul-float v3, v17, v8

    mul-float v25, v20, v11

    add-float v3, v3, v25

    mul-float v25, v23, v14

    add-float v3, v3, v25

    mul-float v25, v18, v7

    mul-float v26, v21, v10

    add-float v25, v25, v26

    mul-float v26, v24, v13

    add-float v4, v25, v26

    mul-float v25, v18, v8

    mul-float v26, v21, v11

    add-float v25, v25, v26

    mul-float v26, v24, v14

    add-float v5, v25, v26

    mul-float v25, v18, v9

    mul-float v26, v21, v12

    add-float v25, v25, v26

    mul-float v26, v24, v15

    add-float v6, v25, v26

    float-to-double v0, v2

    move/from16 v37, v7

    move/from16 v38, v8

    float-to-double v7, v3

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v36

    neg-float v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v35

    neg-float v0, v4

    float-to-double v0, v0

    float-to-double v7, v6

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v34

    return-void
.end method

.method private static getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    move v0, p0

    goto :goto_0

    :pswitch_0
    const v0, 0x30d40

    goto :goto_0

    :pswitch_1
    const v0, 0x1046b

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x4e20

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4

    array-length v0, p0

    const/4 v1, 0x5

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    aget v0, p0, v1

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v2, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_0

    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    :cond_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOrientation([F[F)[F
    .locals 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    goto :goto_0

    :cond_0
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    aget v0, p0, v4

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget v3, p0, v3

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    :goto_0
    return-object p1
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_0

    aget v0, p1, v1

    aput v0, p0, v4

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    aget v5, p1, v4

    aget v6, p1, v4

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v3

    aget v6, p1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aput v0, p0, v4

    aget v0, p0, v4

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    aget v0, p0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    nop

    :cond_1
    aput v5, p0, v4

    :goto_0
    aget v0, p1, v4

    aput v0, p0, v3

    aget v0, p1, v3

    aput v0, p0, v2

    aget v0, p1, v2

    aput v0, p0, v1

    return-void
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x0

    aget v5, p2, v4

    const/4 v6, 0x1

    aget v7, p2, v6

    const/4 v8, 0x2

    aget v9, p2, v8

    mul-float v10, v5, v5

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    const v11, 0x411cf5c3    # 9.81f

    const v12, 0x3f765d4b

    const v13, 0x3f765d4b

    cmpg-float v13, v10, v13

    if-gez v13, :cond_0

    return v4

    :cond_0
    aget v13, p3, v4

    aget v14, p3, v6

    aget v15, p3, v8

    mul-float v16, v14, v9

    mul-float v17, v15, v7

    sub-float v16, v16, v17

    mul-float v17, v15, v5

    mul-float v18, v13, v9

    sub-float v17, v17, v18

    mul-float v18, v13, v7

    mul-float v19, v14, v5

    sub-float v18, v18, v19

    mul-float v19, v16, v16

    mul-float v20, v17, v17

    add-float v19, v19, v20

    mul-float v20, v18, v18

    add-float v8, v19, v20

    move/from16 v22, v7

    float-to-double v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    return v4

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    div-float v8, v7, v6

    mul-float v16, v16, v8

    mul-float v17, v17, v8

    mul-float v18, v18, v8

    mul-float v19, v5, v5

    mul-float v20, v22, v22

    add-float v19, v19, v20

    mul-float v20, v9, v9

    add-float v4, v19, v20

    move/from16 v23, v8

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v4, v7, v4

    mul-float/2addr v5, v4

    mul-float v7, v22, v4

    mul-float/2addr v9, v4

    mul-float v8, v7, v18

    mul-float v19, v9, v17

    sub-float v8, v8, v19

    mul-float v19, v9, v16

    mul-float v20, v5, v18

    sub-float v19, v19, v20

    mul-float v20, v5, v17

    mul-float v22, v7, v16

    sub-float v20, v20, v22

    const/16 v22, 0xb

    const/16 v24, 0xa

    const/16 v25, 0x8

    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x5

    const/16 v29, 0x4

    const/16 v30, 0x3

    const/16 v2, 0x9

    const/16 v31, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    aput v16, v0, v3

    const/4 v3, 0x1

    aput v17, v0, v3

    const/4 v3, 0x2

    aput v18, v0, v3

    aput v8, v0, v30

    aput v19, v0, v29

    aput v20, v0, v28

    aput v5, v0, v27

    aput v7, v0, v26

    aput v9, v0, v25

    goto :goto_0

    :cond_2
    array-length v3, v0

    const/16 v2, 0x10

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    aput v16, v0, v2

    const/4 v2, 0x1

    aput v17, v0, v2

    const/4 v2, 0x2

    aput v18, v0, v2

    aput v31, v0, v30

    aput v8, v0, v29

    aput v19, v0, v28

    aput v20, v0, v27

    aput v31, v0, v26

    aput v5, v0, v25

    const/16 v2, 0x9

    aput v7, v0, v2

    aput v9, v0, v24

    aput v31, v0, v22

    const/16 v2, 0xc

    aput v31, v0, v2

    const/16 v2, 0xd

    aput v31, v0, v2

    const/16 v2, 0xe

    aput v31, v0, v2

    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    mul-float v2, v13, v13

    mul-float v3, v14, v14

    add-float/2addr v2, v3

    mul-float v3, v15, v15

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float v3, v13, v8

    mul-float v32, v14, v19

    add-float v3, v3, v32

    mul-float v32, v15, v20

    add-float v3, v3, v32

    mul-float/2addr v3, v2

    mul-float v32, v13, v5

    mul-float v33, v14, v7

    add-float v32, v32, v33

    mul-float v33, v15, v9

    add-float v32, v32, v33

    mul-float v0, v32, v2

    move/from16 v34, v2

    array-length v2, v1

    move/from16 v35, v4

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v31, v1, v2

    const/4 v2, 0x2

    aput v31, v1, v2

    aput v31, v1, v30

    aput v3, v1, v29

    aput v0, v1, v28

    aput v31, v1, v27

    neg-float v2, v0

    aput v2, v1, v26

    aput v3, v1, v25

    goto :goto_1

    :cond_4
    array-length v2, v1

    const/16 v4, 0x10

    if-ne v2, v4, :cond_6

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v31, v1, v2

    const/4 v2, 0x2

    aput v31, v1, v2

    aput v31, v1, v29

    aput v3, v1, v28

    aput v0, v1, v27

    aput v31, v1, v25

    neg-float v2, v0

    const/16 v4, 0x9

    aput v2, v1, v4

    aput v3, v1, v24

    const/16 v2, 0xc

    const/16 v4, 0xd

    const/16 v21, 0xe

    aput v31, v1, v21

    aput v31, v1, v4

    aput v31, v1, v2

    aput v31, v1, v22

    aput v31, v1, v26

    aput v31, v1, v30

    const/16 v2, 0xf

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    goto :goto_1

    :cond_5
    move/from16 v35, v4

    :cond_6
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-lt v8, v10, :cond_0

    aget v8, v1, v9

    goto :goto_1

    :cond_0
    mul-float v8, v3, v3

    sub-float v8, v12, v8

    mul-float v13, v5, v5

    sub-float/2addr v8, v13

    mul-float v13, v7, v7

    sub-float/2addr v8, v13

    cmpl-float v13, v8, v11

    if-lez v13, :cond_1

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_0

    :cond_1
    move v13, v11

    :goto_0
    move v8, v13

    :goto_1
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v13, v3

    mul-float/2addr v14, v3

    mul-float v15, v13, v5

    mul-float/2addr v15, v5

    mul-float v16, v13, v7

    mul-float v16, v16, v7

    mul-float v17, v13, v3

    mul-float v17, v17, v5

    mul-float v18, v13, v7

    mul-float v18, v18, v8

    mul-float v19, v13, v3

    mul-float v19, v19, v7

    mul-float v20, v13, v5

    mul-float v20, v20, v8

    mul-float v21, v13, v5

    mul-float v21, v21, v7

    mul-float/2addr v13, v3

    mul-float/2addr v13, v8

    array-length v11, v0

    const/16 v22, 0x8

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x5

    const/16 v10, 0x9

    if-ne v11, v10, :cond_2

    sub-float v10, v12, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    sub-float v2, v17, v18

    aput v2, v0, v4

    add-float v2, v19, v20

    aput v2, v0, v6

    add-float v2, v17, v18

    aput v2, v0, v9

    sub-float v2, v12, v14

    sub-float v2, v2, v16

    const/4 v4, 0x4

    aput v2, v0, v4

    sub-float v2, v21, v13

    aput v2, v0, v25

    sub-float v2, v19, v20

    aput v2, v0, v24

    add-float v2, v21, v13

    aput v2, v0, v23

    sub-float/2addr v12, v14

    sub-float/2addr v12, v15

    aput v12, v0, v22

    goto :goto_2

    :cond_2
    array-length v11, v0

    const/16 v10, 0x10

    if-ne v11, v10, :cond_3

    sub-float v10, v12, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    sub-float v2, v17, v18

    aput v2, v0, v4

    add-float v2, v19, v20

    aput v2, v0, v6

    const/4 v2, 0x0

    aput v2, v0, v9

    add-float v2, v17, v18

    const/4 v4, 0x4

    aput v2, v0, v4

    sub-float v2, v12, v14

    sub-float v2, v2, v16

    aput v2, v0, v25

    sub-float v2, v21, v13

    aput v2, v0, v24

    const/4 v2, 0x0

    aput v2, v0, v23

    sub-float v2, v19, v20

    aput v2, v0, v22

    add-float v2, v21, v13

    const/16 v4, 0x9

    aput v2, v0, v4

    const/16 v2, 0xa

    sub-float v4, v12, v14

    sub-float/2addr v4, v15

    aput v4, v0, v2

    const/16 v2, 0xb

    const/4 v4, 0x0

    aput v4, v0, v2

    const/16 v2, 0xc

    const/16 v6, 0xd

    const/16 v9, 0xe

    aput v4, v0, v9

    aput v4, v0, v6

    aput v4, v0, v2

    const/16 v2, 0xf

    aput v12, v0, v2

    :cond_3
    :goto_2
    return-void
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4

    if-ne p0, p3, :cond_2

    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v2, 0x1

    return v2

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v0

    return v0
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_0

    return v6

    :cond_0
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_13

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1

    goto/16 :goto_a

    :cond_1
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_12

    and-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_2

    goto/16 :goto_9

    :cond_2
    and-int/lit8 v5, v1, 0x3

    and-int/lit8 v7, v2, 0x3

    if-ne v5, v7, :cond_3

    return v6

    :cond_3
    xor-int v5, v1, v2

    and-int/lit8 v7, v1, 0x3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    and-int/lit8 v9, v2, 0x3

    sub-int/2addr v9, v8

    and-int/lit8 v10, v5, 0x3

    sub-int/2addr v10, v8

    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    rem-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x2

    rem-int/2addr v13, v12

    xor-int v14, v7, v11

    xor-int v15, v9, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_4

    xor-int/lit16 v5, v5, 0x80

    :cond_4
    const/16 v14, 0x80

    if-lt v1, v14, :cond_5

    move v15, v8

    goto :goto_0

    :cond_5
    move v15, v6

    :goto_0
    if-lt v2, v14, :cond_6

    move/from16 v16, v8

    goto :goto_1

    :cond_6
    move/from16 v16, v6

    :goto_1
    if-lt v5, v14, :cond_7

    move v14, v8

    goto :goto_2

    :cond_7
    move v14, v6

    :goto_2
    const/16 v6, 0x10

    if-ne v4, v6, :cond_8

    const/16 v18, 0x4

    goto :goto_3

    :cond_8
    move/from16 v18, v12

    :goto_3
    const/16 v19, 0x0

    :goto_4
    move/from16 v20, v19

    move/from16 v8, v20

    if-ge v8, v12, :cond_10

    mul-int v20, v8, v18

    const/16 v19, 0x0

    :goto_5
    move/from16 v21, v19

    move/from16 v6, v21

    if-ge v6, v12, :cond_f

    if-ne v7, v6, :cond_a

    add-int v21, v20, v6

    if-eqz v15, :cond_9

    add-int/lit8 v19, v20, 0x0

    aget v12, v0, v19

    neg-float v12, v12

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v20, 0x0

    aget v12, v0, v12

    :goto_6
    aput v12, v3, v21

    :cond_a
    if-ne v9, v6, :cond_c

    add-int v21, v20, v6

    if-eqz v16, :cond_b

    add-int/lit8 v12, v20, 0x1

    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v20, 0x1

    aget v12, v0, v12

    :goto_7
    aput v12, v3, v21

    :cond_c
    if-ne v10, v6, :cond_e

    add-int v21, v20, v6

    if-eqz v14, :cond_d

    add-int/lit8 v12, v20, 0x2

    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v20, 0x2

    aget v12, v0, v12

    :goto_8
    aput v12, v3, v21

    :cond_e
    add-int/lit8 v19, v6, 0x1

    const/16 v6, 0x10

    const/4 v12, 0x3

    goto :goto_5

    :cond_f
    add-int/lit8 v19, v8, 0x1

    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v12, 0x3

    goto :goto_4

    :cond_10
    const/16 v6, 0x10

    if-ne v4, v6, :cond_11

    const/4 v6, 0x7

    const/16 v8, 0xb

    const/16 v12, 0xc

    const/16 v17, 0xd

    const/16 v19, 0xe

    const/16 v20, 0x0

    aput v20, v3, v19

    aput v20, v3, v17

    aput v20, v3, v12

    aput v20, v3, v8

    aput v20, v3, v6

    const/4 v6, 0x3

    aput v20, v3, v6

    const/16 v6, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v3, v6

    :cond_11
    const/4 v6, 0x1

    return v6

    :cond_12
    :goto_9
    const/4 v5, 0x0

    return v5

    :cond_13
    :goto_a
    move v5, v6

    return v5
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public configureDirectChannel(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result v0

    return v0
.end method

.method protected abstract configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method public createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    return-void
.end method

.method protected abstract destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public enterOPSM()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->enterOPSMImpl()V

    return-void
.end method

.method protected enterOPSMImpl()V
    .locals 0

    return-void
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getActiveSensorList()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getActiveSensorListImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getActiveSensorListImpl()Ljava/lang/String;
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x11

    if-eq p1, v2, :cond_0

    const/16 v2, 0x16

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_0

    const v2, 0x1fa2651

    if-eq p1, v2, :cond_0

    const v2, 0x1fa2652

    if-eq p1, v2, :cond_0

    const v2, 0x1fa2654

    if-eq p1, v2, :cond_0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v4

    if-ne v4, v1, :cond_2

    return-object v3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDynamicSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    monitor-exit v1

    move-object v1, v2

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public initDataInjection(Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    array-length v1, p2

    if-ne v1, v0, :cond_2

    const/4 v1, -0x1

    if-lt p3, v1, :cond_1

    const/4 v1, 0x3

    if-gt p3, v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor does not support data injection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public isDynamicSensorDiscoverySupported()Z
    .locals 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public leaveOPSM()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->leaveOPSMImpl()V

    return-void
.end method

.method protected leaveOPSMImpl()V
    .locals 0

    return-void
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method protected abstract unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
