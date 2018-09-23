.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_DURATION:I = 0x190

.field private static final DEFAULT_DOT_SIZE:I = 0x8

.field private static final DEFAULT_GAP:I = 0xc

.field private static final DEFAULT_SELECTED_COLOUR:I = -0x1

.field private static final DEFAULT_UNSELECTED_COLOUR:I = -0x7f000001

.field private static final INVALID_FRACTION:F = -1.0f

.field private static final MINIMAL_REVEAL:F = 1.0E-5f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private attachedState:Z

.field private final combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningAnimations:[Landroid/animation/ValueAnimator;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pageCount:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/DotsPageIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->DotsPageIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x8

    mul-int/2addr v2, v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    const/16 v2, 0xc

    mul-int/2addr v2, v0

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    const/16 v2, 0x190

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    iget-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    const/4 v2, 0x4

    const v3, -0x7f000001

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v2, 0x10c000d

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    const v2, 0x10a0004

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/DotsPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->clearJoiningFractions()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setDotRevealFraction(IF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setJoiningFraction(IF)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/widget/DotsPageIndicator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    return-object v0
.end method

.method private calculateDotPositions()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v3

    sub-int v4, v2, v0

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v8, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    iput v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    int-to-float v5, v1

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iput v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelJoiningAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelMoveAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRetreatAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRevealAnimations()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelMoveAnimation()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRetreatAnimation()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRevealAnimations()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private clearJoiningFractions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p3, p2, :cond_0

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float v3, p1, v3

    mul-float/2addr v3, v1

    sub-float v1, p1, v3

    invoke-direct {v2, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float/2addr v3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    goto :goto_0

    :goto_1
    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    iput-object v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    const-wide/16 v2, 0x4

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    div-long/2addr v4, v2

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private drawSelected(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnselected(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x15

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_1
    move v7, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v1, v0

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v4, v1, v7

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aget v1, v1, v0

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aget v6, v1, v0

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/DotsPageIndicator;->getUnselectedPath(IFFFF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private getUnselectedPath(IFFFF)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    const/4 v4, 0x0

    cmpl-float v5, p4, v4

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    cmpl-float v5, p4, v6

    if-nez v5, :cond_2

    :cond_0
    cmpl-float v5, p5, v4

    if-nez v5, :cond_2

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-ne v1, v5, :cond_1

    iget-boolean v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-eq v5, v7, :cond_2

    :cond_1
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v8, v8, v1

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    cmpl-float v4, p4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    if-lez v4, :cond_4

    cmpg-float v4, p4, v5

    if-gez v4, :cond_4

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v2, v10

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v12, v2

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v10, v9, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v4, v2

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v10, v10

    mul-float v10, v10, p4

    add-float/2addr v4, v10

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v4, v2

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v4, v10

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    move v14, v4

    move v15, v8

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v4, v2

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move v14, v4

    move v15, v6

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_3

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_3
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v8, v3, v8

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v11, v3

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v8, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-virtual {v4, v8, v9, v10, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v4, v3, v4

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v8, v8

    mul-float v8, v8, p4

    sub-float/2addr v4, v8

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float v4, v3, v4

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v4, v8

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    move v14, v4

    move v15, v8

    move/from16 v16, v7

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v4, v7

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v4, v7

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move v14, v4

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_4

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    cmpl-float v4, p4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_5

    cmpg-float v4, p4, v5

    if-gez v4, :cond_5

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v6, v2, v6

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v8, v2

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v6, v7, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/4 v7, 0x1

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v4, v6, v9, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v4, v2

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    sub-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    sub-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    sub-float v6, v5, p4

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    sub-float v6, v5, p4

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v6, v3, v6

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v8, v3

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v8, 0x1

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    sub-float v6, v5, p4

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    sub-float v6, v5, p4

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p4

    sub-float/2addr v4, v6

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_5
    cmpl-float v4, p4, v5

    if-nez v4, :cond_6

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v5, v2, v5

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v7, v3

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_6
    const v4, 0x3727c5ac    # 1.0E-5f

    cmpl-float v4, p5, v4

    if-lez v4, :cond_7

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v6, v6, p5

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_7
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v4
.end method

.method private resetState()V
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iput-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    :cond_0
    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    :cond_1
    return-void
.end method

.method private setDotRevealFraction(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setJoiningFraction(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 11

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    sub-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v2, v2, p1

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    new-array v2, v1, [Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    if-le p1, v0, :cond_1

    add-int v4, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    :goto_1
    int-to-long v5, v2

    iget-wide v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v9, 0x8

    div-long/2addr v7, v9

    mul-long/2addr v5, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/widget/DotsPageIndicator;->createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->startJoiningAnimations()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->invalidate()V

    :goto_2
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method private startJoiningAnimations()V
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    :cond_0
    return-void
.end method

.method getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    return v0
.end method

.method getDotCenterX(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v0, v0, p1

    return v0
.end method

.method getDotCenterY()F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    return v0
.end method

.method getSelectedColour()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    return v0
.end method

.method getSelectedDotX()F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return v0
.end method

.method getUnselectedColour()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawUnselected(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawSelected(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    :goto_0
    nop

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    :goto_1
    nop

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
