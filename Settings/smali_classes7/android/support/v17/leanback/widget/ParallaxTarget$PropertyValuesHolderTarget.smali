.class public final Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;
.super Landroid/support/v17/leanback/widget/ParallaxTarget;
.source "ParallaxTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyValuesHolderTarget"
.end annotation


# static fields
.field private static final PSEUDO_DURATION:J = 0xf4240L


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V
    .locals 3
    .param p1, "targetObject"    # Ljava/lang/Object;
    .param p2, "values"    # Landroid/animation/PropertyValuesHolder;

    .line 82
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxTarget;-><init>()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/32 v1, 0xf4240

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 86
    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 3
    .param p1, "fraction"    # F

    .line 90
    iput p1, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mFraction:F

    .line 91
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;->mAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v1, p1

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 92
    return-void
.end method
