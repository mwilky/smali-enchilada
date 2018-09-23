.class public Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRetreatAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iput-object v7, v6, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    move-object/from16 v11, p5

    invoke-direct {v6, v7, v11}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$700(Lcom/android/settings/widget/DotsPageIndicator;)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-le v9, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    :goto_0
    move v12, v0

    if-le v9, v8, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    :goto_1
    move v13, v0

    if-le v9, v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    add-float/2addr v0, v1

    :goto_2
    move v14, v0

    if-le v9, v8, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    add-float/2addr v0, v1

    :goto_3
    move v15, v0

    new-array v0, v10, [Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v7, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1102(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    new-array v5, v10, [I

    cmpl-float v0, v12, v13

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    new-array v0, v1, [F

    aput v12, v0, v3

    aput v13, v0, v2

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    nop

    :goto_4
    move v0, v3

    if-ge v0, v10, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    add-int v3, v8, v0

    new-instance v4, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v16

    add-int v17, v8, v0

    aget v9, v16, v17

    invoke-direct {v4, v7, v9}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {v2, v7, v3, v4}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object v2, v1, v0

    add-int v1, v8, v0

    aput v1, v5, v0

    add-int/lit8 v3, v0, 0x1

    move/from16 v9, p3

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {v0, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_6

    :cond_5
    new-array v0, v1, [F

    aput v14, v0, v3

    aput v15, v0, v2

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    nop

    :goto_5
    move v0, v3

    if-ge v0, v10, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    sub-int v3, v8, v0

    new-instance v4, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v9

    sub-int v16, v8, v0

    aget v9, v9, v16

    invoke-direct {v4, v7, v9}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {v2, v7, v3, v4}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object v2, v1, v0

    sub-int v1, v8, v0

    aput v1, v5, v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;

    invoke-direct {v0, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_6
    new-instance v9, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;

    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    move v4, v12

    move-object/from16 v16, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;[IFF)V

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
