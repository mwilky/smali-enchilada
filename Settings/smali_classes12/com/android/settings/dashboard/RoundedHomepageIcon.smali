.class public Lcom/android/settings/dashboard/RoundedHomepageIcon;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RoundedHomepageIcon.java"


# instance fields
.field mBackgroundColor:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0801ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dashboard/RoundedHomepageIcon;->mBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x1

    move-object v2, p0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/dashboard/RoundedHomepageIcon;->setLayerInset(IIIII)V

    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/settings/dashboard/RoundedHomepageIcon;->mBackgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RoundedHomepageIcon;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
