.class Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDensity:I

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mThemeAttrs:[I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, v0

    :goto_0
    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v1, v2

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setDensity(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    :cond_0
    return-void
.end method
