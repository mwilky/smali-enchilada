.class Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# static fields
.field static final N_CHILDREN:I = 0x2


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field private mCheckedOpacity:Z

.field private mCheckedStateful:Z

.field mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field mDensity:I

.field private mIsStateful:Z

.field private mOpacity:I

.field mOpacityOverride:I

.field mSrcDensityOverride:I

.field private mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    if-eqz p1, :cond_2

    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    nop

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    goto :goto_3

    :cond_2
    nop

    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final canConstantState()Z
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 7

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, -0x2

    :goto_2
    add-int/lit8 v4, v1, 0x1

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v2, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    return v2
.end method

.method public final hasFocusStateSpecified()Z
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    return-void
.end method

.method public final isStateful()Z
    .locals 5

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    return v1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final setDensity(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    :cond_0
    return-void
.end method
