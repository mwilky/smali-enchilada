.class abstract Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDensity:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mSrcDensityOverride:I

.field private mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    iput-object v2, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    iget v2, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v2, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v2, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget v2, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    iput v2, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    goto :goto_0

    :cond_2
    nop

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mThemeAttrs:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canConstantState()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method onDensityChanged(II)V
    .locals 0

    return-void
.end method

.method public final setDensity(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDensity:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    :cond_0
    return-void
.end method
