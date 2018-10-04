.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/view/WindowInsets;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private mInnerInsets:Landroid/view/WindowInsets;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private mLastBaseInnerInsets:Landroid/view/WindowInsets;

.field private mLastInnerInsets:Landroid/view/WindowInsets;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    const-string v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    if-eqz p3, :cond_0

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3

    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DecorToolbar;

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    nop

    :goto_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v10

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v2

    or-int/2addr v10, v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v10, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v10, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_4
    sget-object v2, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p5, p3

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v2

    move v12, v1

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-ne v7, v1, :cond_0

    sub-int v1, v5, v10

    iget v0, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    iget v0, v8, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v1, v4, v0

    :goto_1
    move v0, v1

    add-int v1, v11, v9

    move v13, v2

    add-int v2, v0, v10

    invoke-virtual {v7, v11, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_1
    move v12, v1

    move v13, v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v12

    move v2, v13

    move-object v0, p0

    goto :goto_0

    :cond_2
    move v12, v1

    move v13, v2

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    :cond_0
    move v13, v9

    move v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v14

    and-int/lit16 v0, v14, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v15, v0

    if-eqz v15, :cond_3

    iget v10, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    iget-boolean v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v10, v2

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    :cond_4
    :goto_1
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_6

    if-eqz v15, :cond_5

    iget v11, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    goto :goto_2

    :cond_5
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v11

    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iget-boolean v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_7

    if-nez v15, :cond_7

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v11

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1, v10, v1, v11}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    goto :goto_3

    :cond_7
    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v2, v10

    iget-object v3, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    iget-object v4, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    :goto_3
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iput-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_8
    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    iget-object v1, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v7, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v13, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, p1

    invoke-static {v1, v4, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v3, 0x10

    move/from16 v8, p2

    invoke-static {v2, v8, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v4, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-interface {v5, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    if-nez v1, :cond_4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    :cond_5
    :goto_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_6
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const v0, 0x1020181

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const v0, 0x1020180

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const v0, 0x1020417

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x500

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUiOptions(I)V
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v0}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    const v2, 0x1020185

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "ActionBarOverlayLayout"

    const-string v3, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
