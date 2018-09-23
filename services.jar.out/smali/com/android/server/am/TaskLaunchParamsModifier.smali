.class Lcom/android/server/am/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_0

    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_0

    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1
    return v0
.end method

.method static getFreeformHeight(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getFreeformStartLeft(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformStartTop(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformWidth(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getHorizontalStep(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static getVerticalStep(Landroid/graphics/Rect;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p3, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v2

    if-le v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    nop

    :cond_4
    :goto_0
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v8

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v9

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    add-int v1, v8, p3

    add-int v2, v9, p4

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 4

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getHorizontalStep(Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getVerticalStep(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_0
    neg-int v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    goto :goto_0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v0, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v9, p7

    iget-object v10, v9, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v11, 0x2

    if-nez v7, :cond_1

    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget-object v0, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v3

    iget-object v0, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v4

    move-object v0, v6

    move-object v1, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return v11

    :cond_1
    iget-object v0, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v6, v7, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v12

    iget-object v0, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v6, v7, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v13

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v14, v0, 0x70

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v5, v0, 0x7

    const/16 v0, 0x30

    const/4 v1, 0x5

    if-ne v14, v0, :cond_3

    if-ne v5, v1, :cond_2

    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v1, v8

    move v3, v12

    move v4, v13

    move v11, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    move v11, v5

    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v1, v8

    move v3, v12

    move v4, v13

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    move v11, v5

    const/16 v0, 0x50

    if-ne v14, v0, :cond_5

    if-ne v11, v1, :cond_4

    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v1, v8

    move v3, v12

    move v4, v13

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v1, v8

    move v3, v12

    move v4, v13

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported gravity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", positioning in the center instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v6, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v6

    move-object v1, v8

    move v3, v12

    move v4, v13

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_6
    :goto_1
    move-object/from16 v9, p7

    const/4 v0, 0x0

    return v0
.end method
