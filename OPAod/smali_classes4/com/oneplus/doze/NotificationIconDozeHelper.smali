.class public Lcom/oneplus/doze/NotificationIconDozeHelper;
.super Lcom/oneplus/doze/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# instance fields
.field private mColor:I

.field private final mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mImageDarkAlpha:I

.field private final mImageDarkColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/doze/NotificationDozeHelper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkColor:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkAlpha:I

    return-void
.end method

.method private fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 6

    new-instance v1, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$Oq9LMJaZAxSY4S-Hxdi3lopYC80;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$Oq9LMJaZAxSY4S-Hxdi3lopYC80;-><init>(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 6

    new-instance v1, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;-><init>(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic lambda$fadeImageAlpha$1(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkAlpha:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method public static synthetic lambda$fadeImageColorFilter$0(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private updateImageAlpha(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkAlpha:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;F)V
    .locals 4

    iget v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p2}, Lcom/oneplus/doze/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    return-void
.end method

.method public setImageDark(Landroid/widget/ImageView;ZZJZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-nez p6, :cond_0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;Z)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    :goto_0
    return-void
.end method
