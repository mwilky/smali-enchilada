.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 6005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6031
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6032
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 10
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .line 6057
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    const-wide/16 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    .line 6058
    mul-float/2addr v3, p1

    float-to-long v7, v3

    .line 6059
    .local v7, "normTime":J
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v1, :cond_0

    .line 6061
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6062
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 6063
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6064
    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 6066
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    .line 6067
    .end local v7    # "normTime":J
    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    .line 6068
    neg-float v1, p1

    mul-float/2addr v1, v3

    float-to-long v7, v1

    .line 6069
    .restart local v7    # "normTime":J
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v1, :cond_2

    .line 6071
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6072
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 6073
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6074
    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 6076
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    .line 6078
    .end local v7    # "normTime":J
    :cond_3
    move-wide v7, v4

    .restart local v7    # "normTime":J
    :goto_0
    move-wide v0, v7

    .line 6084
    .end local v7    # "normTime":J
    .local v0, "normTime":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_9

    .line 6085
    iget-wide v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v2, p2, v2

    .line 6086
    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 6087
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6088
    .local v4, "acc":F
    cmp-long v5, v2, v0

    const v7, 0x3ccccccd    # 0.025f

    if-gez v5, :cond_6

    .line 6090
    sub-long v8, v0, v2

    long-to-float v5, v8

    mul-float/2addr v5, v7

    .line 6091
    .local v5, "scale":F
    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    mul-float/2addr v4, v5

    .line 6095
    :cond_4
    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_5

    move v6, v4

    nop

    :cond_5
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6096
    .end local v5    # "scale":F
    goto :goto_1

    .line 6098
    :cond_6
    sub-long v8, v2, v0

    long-to-float v5, v8

    mul-float/2addr v5, v7

    .line 6099
    .restart local v5    # "scale":F
    cmpl-float v7, v5, v6

    if-lez v7, :cond_7

    div-float/2addr v4, v5

    .line 6103
    :cond_7
    cmpl-float v7, v4, v6

    if-lez v7, :cond_8

    move v6, v4

    nop

    :cond_8
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6106
    .end local v2    # "delta":J
    .end local v4    # "acc":F
    .end local v5    # "scale":F
    :cond_9
    :goto_1
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6107
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    return v2
.end method

.method generate()I
    .locals 5

    .line 6119
    const/4 v0, 0x0

    .line 6120
    .local v0, "movement":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 6122
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 6123
    .local v1, "dir":I
    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 6155
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 6156
    return v0

    .line 6139
    :pswitch_0
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 6140
    return v0

    .line 6142
    :cond_1
    add-int/2addr v0, v1

    .line 6143
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 6144
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6145
    const/4 v2, 0x2

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 6146
    goto :goto_3

    .line 6128
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 6129
    return v0

    .line 6131
    :cond_2
    add-int/2addr v0, v1

    .line 6132
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 6133
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 6134
    goto :goto_3

    .line 6158
    :cond_3
    add-int/2addr v0, v1

    .line 6159
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6160
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6161
    .local v2, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    .line 6162
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_2
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6165
    .end local v1    # "dir":I
    .end local v2    # "acc":F
    :goto_3
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    .line 6038
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6039
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 6040
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 6041
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 6042
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 6043
    return-void
.end method
