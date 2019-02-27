.class Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;
.super Landroid/widget/FrameLayout;
.source "SimpleHeadsUpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_IN:I = 0x113

.field private static final ANIMATION_DURATION_OUT:I = 0x96

.field private static final APPEAR_TIMEOUT:I = 0x1770

.field private static final BGCOLOR:I = -0x1


# instance fields
.field private final INTERPOLATOR_IN:Landroid/animation/TimeInterpolator;

.field private final INTERPOLATOR_OUT:Landroid/animation/TimeInterpolator;

.field private mAppearTimeOut:J

.field final synthetic this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;


# direct methods
.method public constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .line 85
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 86
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v1, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->INTERPOLATOR_IN:Landroid/animation/TimeInterpolator;

    .line 80
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {p1, v2, v1, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->INTERPOLATOR_OUT:Landroid/animation/TimeInterpolator;

    .line 83
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->mAppearTimeOut:J

    .line 87
    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->mAppearTimeOut:J

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;

    .line 74
    iget-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->mAppearTimeOut:J

    return-wide v0
.end method

.method private applyEnterAnimation(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 117
    const/16 v0, 0x113

    .line 118
    .local v0, "duration":I
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->INTERPOLATOR_IN:Landroid/animation/TimeInterpolator;

    .line 120
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 121
    .local v2, "height":I
    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v5, v4, [F

    neg-int v6, v2

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    const/4 v8, 0x0

    aput v8, v5, v6

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 123
    .local v3, "animY":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x113

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    const-string v5, "alpha"

    new-array v10, v4, [F

    fill-array-data v10, :array_0

    invoke-static {p1, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 125
    .local v5, "alpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 126
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v7

    aput-object v5, v4, v6

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 128
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v4, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$1;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$onViewAdded$0(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->applyEnterAnimation(Landroid/view/View;)V

    .line 104
    return-void
.end method


# virtual methods
.method public applyExitAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 154
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->INTERPOLATOR_OUT:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    new-instance v1, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView$2;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 179
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 93
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 101
    new-instance v0, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/util/notification/-$$Lambda$SimpleHeadsUpDialog$ContentWindowView$x-qRTKHVLMsXOHknrnaSCxODphQ;-><init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$002(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    .line 112
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$100(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setTimeOut(J)V
    .locals 0
    .param p1, "timeOut"    # J

    .line 150
    iput-wide p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$ContentWindowView;->mAppearTimeOut:J

    .line 151
    return-void
.end method
