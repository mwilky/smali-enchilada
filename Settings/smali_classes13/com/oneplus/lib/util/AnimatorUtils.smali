.class public Lcom/oneplus/lib/util/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# static fields
.field public static final FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public static final FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

.field public static final FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static final LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static PROPNAME_HEIGHT:Ljava/lang/String; = null

.field public static PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String; = null

.field public static PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String; = null

.field public static PROPNAME_WIDTH:Ljava/lang/String; = null

.field public static final VIEW_INFO_EXTRA:Ljava/lang/String; = "VIEW_INFO_EXTRA"

.field public static final alpha1:F = 0.0f

.field public static final alpha10:F = 0.9f

.field public static final alpha11:F = 1.0f

.field public static final alpha2:F = 0.08f

.field public static final alpha3:F = 0.12f

.field public static final alpha4:F = 0.18f

.field public static final alpha5:F = 0.2f

.field public static final alpha6:F = 0.24f

.field public static final alpha7:F = 0.4f

.field public static final alpha8:F = 0.48f

.field public static final alpha9:F = 0.54f

.field public static final location_center_center:I = 0x5

.field public static final location_center_under:I = 0x8

.field public static final location_center_upper:I = 0x2

.field public static final location_left_center:I = 0x4

.field public static final location_left_under:I = 0x7

.field public static final location_left_upper:I = 0x1

.field public static final location_right_center:I = 0x6

.field public static final location_right_under:I = 0x9

.field public static final location_right_upper:I = 0x3

.field private static mEndValues:Landroid/os/Bundle; = null

.field private static mStartValues:Landroid/os/Bundle; = null

.field public static final rotate_angle1:F = 15.0f

.field public static final rotate_angle2:F = 30.0f

.field public static final rotate_angle3:F = 45.0f

.field public static final rotate_angle4:F = 90.0f

.field public static final rotate_angle5:F = 120.0f

.field public static final rotate_angle6:F = 180.0f

.field public static final rotate_angle7:F = 270.0f

.field public static final rotate_angle8:F = 360.0f

.field public static final time_part1:I = 0x1e

.field public static final time_part2:I = 0x2d

.field public static final time_part3:I = 0x4b

.field public static final time_part4:I = 0x96

.field public static final time_part5:I = 0xe1

.field public static final time_part6:I = 0x12c

.field public static final time_part7:I = 0x177

.field public static final zoom_ratio1:F = 0.0f

.field public static final zoom_ratio10:F = 1.5f

.field public static final zoom_ratio2:F = 0.1f

.field public static final zoom_ratio3:F = 0.2f

.field public static final zoom_ratio4:F = 0.3f

.field public static final zoom_ratio5:F = 0.5f

.field public static final zoom_ratio6:F = 0.75f

.field public static final zoom_ratio7:F = 0.8f

.field public static final zoom_ratio8:F = 1.0f

.field public static final zoom_ratio9:F = 1.2f


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const-string v0, "location:left"

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    const-string v0, "location:top"

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    const-string v0, "space:width"

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    const-string v0, "space:height"

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/lib/util/AnimatorUtils;->prepareScene(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/lib/util/AnimatorUtils;->runEnterAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static captureValues(Landroid/view/View;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static onUiReady(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    const-string v0, "VIEW_INFO_EXTRA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/util/AnimatorUtils$1;

    invoke-direct {v1, p1}, Lcom/oneplus/lib/util/AnimatorUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static prepareScene(Landroid/view/View;)V
    .locals 7

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/util/AnimatorUtils;->scaleDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/AnimatorUtils;->scaleDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v5, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/util/AnimatorUtils;->translationDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v5, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/util/AnimatorUtils;->translationDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    int-to-float v5, v3

    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v5, v4

    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private static runEnterAnimation(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static runExitAnimation(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/util/AnimatorUtils;->translationDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/AnimatorUtils;->translationDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/util/AnimatorUtils;->scaleDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v2

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->mStartValues:Landroid/os/Bundle;

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    sget-object v5, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/util/AnimatorUtils;->scaleDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0xe1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/oneplus/lib/util/AnimatorUtils$2;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/util/AnimatorUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static scaleDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)F
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setPivotType(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static translationDelta(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sub-int v2, v0, v1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
