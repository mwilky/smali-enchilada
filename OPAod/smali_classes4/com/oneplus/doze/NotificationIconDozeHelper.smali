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
    .param p1, "ctx"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/doze/NotificationDozeHelper;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkColor:I

    .line 32
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 35
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkAlpha:I

    .line 39
    return-void
.end method

.method private fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 6
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .line 71
    new-instance v1, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$Oq9LMJaZAxSY4S-Hxdi3lopYC80;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$Oq9LMJaZAxSY4S-Hxdi3lopYC80;-><init>(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 75
    return-void
.end method

.method private fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 6
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .line 65
    new-instance v1, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;-><init>(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 68
    return-void
.end method

.method public static synthetic lambda$fadeImageAlpha$1(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 72
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 73
    .local v0, "t":F
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

    .line 74
    return-void
.end method

.method public static synthetic lambda$fadeImageColorFilter$0(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    .line 67
    return-void
.end method

.method private updateImageAlpha(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .line 98
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageDarkAlpha:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 99
    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;F)V
    .locals 4
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .line 82
    iget v0, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p2}, Lcom/oneplus/doze/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 83
    .local v0, "color":I
    iget-object v1, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 84
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .local v1, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 92
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 93
    iget-object v3, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .line 78
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    .line 79
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 42
    iput p1, p0, Lcom/oneplus/doze/NotificationIconDozeHelper;->mColor:I

    .line 43
    return-void
.end method

.method public setImageDark(Landroid/widget/ImageView;ZZJZ)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J
    .param p6, "useGrayscale"    # Z

    .line 47
    if-eqz p3, :cond_1

    .line 48
    if-nez p6, :cond_0

    .line 49
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V

    .line 50
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/oneplus/doze/NotificationIconDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    .line 55
    :cond_1
    if-nez p6, :cond_2

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;Z)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateImageAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/doze/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    .line 62
    :goto_0
    return-void
.end method
