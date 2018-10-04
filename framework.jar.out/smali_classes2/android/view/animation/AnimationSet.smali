.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x10

    invoke-direct {p0, v4, v3}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    return-void
.end method

.method private setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .locals 9

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    move v1, v2

    nop

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_3
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    :cond_5
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    :goto_1
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    return-void
.end method

.method protected bridge synthetic clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Landroid/view/animation/AnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .locals 8

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    iget v4, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_1

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_2

    :cond_1
    nop

    :goto_1
    move v5, v6

    if-ge v5, v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-wide v2
.end method

.method public getStartTime()J
    .locals 8

    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    add-int/lit8 v6, v0, -0x1

    :goto_0
    const/4 v7, 0x1

    if-ltz v6, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v9, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v7

    :goto_2
    move v3, v9

    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    if-nez v4, :cond_3

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v9, v10

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v7

    :goto_4
    move v4, v9

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    move v10, v7

    nop

    :cond_4
    move v5, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_7

    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v6, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_6
    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    :cond_7
    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v5, v6, :cond_9

    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v6, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_8
    iput-boolean v5, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    :cond_9
    return v3
.end method

.method public hasAlpha()Z
    .locals 4

    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    nop

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 26

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v5, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget v6, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iget v7, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget v8, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v9, 0x8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    :cond_6
    iget-object v8, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-wide v10, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    iget-boolean v13, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    iget v14, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v17, v4

    iget-wide v3, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-eqz v17, :cond_8

    if-eqz v3, :cond_7

    array-length v4, v3

    if-eq v4, v9, :cond_9

    :cond_7
    new-array v4, v9, [J

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v3, v4

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v3, v4

    :cond_9
    :goto_6
    const/16 v16, 0x0

    :goto_7
    move/from16 v4, v16

    if-ge v4, v9, :cond_10

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/animation/Animation;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v0, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_e
    if-eqz v17, :cond_f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v20

    move/from16 v22, v1

    move/from16 v23, v2

    add-long v1, v20, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    aput-wide v20, v3, v4

    goto :goto_8

    :cond_f
    move/from16 v22, v1

    move/from16 v23, v2

    :goto_8
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    add-int/lit8 v16, v4, 0x1

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v5, v25

    move-object/from16 v0, p0

    goto :goto_7

    :cond_10
    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 11

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    add-int/lit8 v5, v1, -0x1

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    iget-object v7, v6, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v6, v8, v3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method restoreChildrenStartOffset()V
    .locals 7

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restrictDuration(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 4

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 4

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method public setStartOffset(J)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
