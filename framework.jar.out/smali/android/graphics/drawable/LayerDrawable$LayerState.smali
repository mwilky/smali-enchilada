.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field private mCheckedOpacity:Z

.field private mCheckedStateful:Z

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field mDensity:I

.field private mIsStateful:Z

.field mNumChildren:I

.field private mOpacity:I

.field mOpacityOverride:I

.field mPaddingBottom:I

.field mPaddingEnd:I

.field mPaddingLeft:I

.field private mPaddingMode:I

.field mPaddingRight:I

.field mPaddingStart:I

.field mPaddingTop:I

.field private mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    new-array v3, v2, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    nop

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iget-boolean v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    :cond_2
    goto :goto_2

    :cond_3
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :goto_2
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method

.method private applyDensityScaling(II)V
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    :cond_3
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    :cond_4
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    :cond_5
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 7

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method public final canConstantState()Z
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 7

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, -0x2

    :goto_2
    add-int/lit8 v4, v2, 0x1

    :goto_3
    if-ge v4, v0, :cond_5

    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    return v3
.end method

.method public final hasFocusStateSpecified()Z
    .locals 6

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    return-void
.end method

.method public final isStateful()Z
    .locals 6

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    return v2
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected onDensityChanged(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    return-void
.end method

.method public final setDensity(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    :cond_0
    return-void
.end method
