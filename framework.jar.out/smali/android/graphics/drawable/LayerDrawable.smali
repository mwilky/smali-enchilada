.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final INSET_UNDEFINED:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String; = "LayerDrawable"

.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1


# instance fields
.field private mChildRequestedInvalidation:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private mSuspendChildInvalidation:Z

.field private final mTmpContainer:Landroid/graphics/Rect;

.field private final mTmpOutRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v1, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    aget-object v4, p1, v2

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v0, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "layers must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    if-eq v3, v2, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_8

    :cond_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    goto :goto_0

    :cond_2
    if-gt v5, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_7

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    const/4 v9, 0x4

    if-eqz v8, :cond_4

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    aget v8, v8, v9

    if-nez v8, :cond_7

    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-ne v8, v9, :cond_5

    goto :goto_1

    :cond_5
    if-ne v4, v3, :cond_6

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v3, v8

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_2

    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_2
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3

    iget-object v0, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static resolveGravity(IIIII)I
    .locals 1

    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    or-int/lit8 p0, p0, 0x7

    goto :goto_0

    :cond_0
    const v0, 0x800003

    or-int/2addr p0, v0

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_2

    or-int/lit8 p0, p0, 0x70

    goto :goto_1

    :cond_2
    or-int/lit8 p0, p0, 0x30

    :cond_3
    :goto_1
    if-gez p1, :cond_4

    if-gez p3, :cond_4

    or-int/lit8 p0, p0, 0x7

    :cond_4
    if-gez p2, :cond_5

    if-gez p4, :cond_5

    or-int/lit8 p0, p0, 0x70

    :cond_5
    return p0
.end method

.method private resumeChildInvalidation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private setLayerInsetInternal(IIIIIII)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return-void
.end method

.method private suspendChildInvalidation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    throw v0
.end method

.method private updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v12, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v13

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v13, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    move v14, v8

    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v8}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    nop

    :cond_1
    move v15, v6

    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v11, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v7, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    move/from16 v16, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v6

    :goto_1
    move v10, v7

    if-ge v2, v10, :cond_a

    aget-object v9, v11, v2

    iget-object v6, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    nop

    move/from16 v25, v4

    move/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v19, v14

    goto/16 :goto_8

    :cond_2
    iget v8, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iget v7, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    if-eqz v14, :cond_3

    move/from16 v17, v10

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_2

    :cond_3
    move/from16 v17, v10

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    :goto_2
    if-eqz v14, :cond_4

    move-object/from16 v18, v11

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_3

    :cond_4
    move-object/from16 v18, v11

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    :goto_3
    move/from16 v19, v14

    const/high16 v14, -0x80000000

    if-ne v10, v14, :cond_5

    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_4

    :cond_5
    move v14, v10

    :goto_4
    move/from16 v21, v10

    const/high16 v10, -0x80000000

    if-ne v11, v10, :cond_6

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_5

    :cond_6
    move v10, v11

    :goto_5
    move/from16 v20, v10

    iget-object v10, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    move/from16 v22, v11

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v14

    add-int/2addr v11, v3

    move/from16 v23, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v8

    add-int/2addr v14, v4

    move/from16 v24, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    sub-int v8, v8, v20

    sub-int/2addr v8, v5

    move/from16 v25, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    sub-int v4, v4, v16

    invoke-virtual {v10, v11, v14, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iget v8, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iget v1, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-static {v1, v11, v8, v4, v14}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    move-result v1

    if-gez v11, :cond_7

    move/from16 v26, v4

    goto :goto_6

    :cond_7
    move/from16 v26, v11

    :goto_6
    move/from16 v27, v7

    move/from16 v7, v26

    if-gez v8, :cond_8

    move/from16 v26, v14

    goto :goto_7

    :cond_8
    move/from16 v26, v8

    :goto_7
    move/from16 v28, v8

    move/from16 v8, v26

    move/from16 v29, v4

    move-object v4, v6

    move v6, v1

    move-object/from16 v26, v9

    move-object v9, v10

    move-object/from16 v30, v10

    move-object v10, v12

    move/from16 v31, v11

    move v11, v13

    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v15, :cond_9

    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v6, v6, v2

    add-int/2addr v3, v6

    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v6, v6, v2

    add-int v6, v25, v6

    iget-object v9, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v9, v9, v2

    add-int v16, v16, v9

    move v4, v6

    goto :goto_9

    :cond_9
    :goto_8
    move/from16 v4, v25

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v17

    move-object/from16 v11, v18

    move/from16 v14, v19

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_a
    move/from16 v25, v4

    move-object/from16 v18, v11

    move/from16 v19, v14

    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_1

    :pswitch_2
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_1

    :pswitch_3
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    goto :goto_1

    :pswitch_4
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_1

    :pswitch_5
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    goto :goto_1

    :pswitch_6
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_1

    :pswitch_7
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    goto :goto_1

    :pswitch_8
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    goto :goto_1

    :pswitch_9
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    goto :goto_1

    :pswitch_a
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$202(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    goto :goto_1

    :pswitch_2
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_1

    :pswitch_3
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_1

    :pswitch_4
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    goto :goto_1

    :pswitch_5
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    goto :goto_1

    :pswitch_6
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    goto :goto_1

    :pswitch_7
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    goto :goto_1

    :pswitch_8
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public addLayer(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    return v1
.end method

.method addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lt v3, v1, :cond_2

    add-int/lit8 v4, v1, 0xa

    new-array v4, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-lez v3, :cond_1

    iget-object v5, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_2
    iget-object v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v2, v3

    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    return v3
.end method

.method addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 4

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    nop

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

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

.method public clearMutated()V
    .locals 5

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method ensurePadding()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findIndexByLayerId(I)I
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v4, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getAlpha()I
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1
.end method

.method public getBottomPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getEndPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getId(I)I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getIntrinsicHeight()I
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v6, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    goto :goto_4

    :cond_1
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v8, :cond_2

    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    goto :goto_2

    :cond_2
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    :goto_2
    if-gez v8, :cond_3

    const/4 v9, -0x1

    goto :goto_3

    :cond_3
    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v9, v8

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    :goto_3
    if-le v9, v0, :cond_4

    move v0, v9

    :cond_4
    if-eqz v3, :cond_5

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v10, v10, v4

    add-int/2addr v1, v10

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v10, v10, v4

    add-int/2addr v2, v10

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v7, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v8, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_2
    if-ge v5, v8, :cond_b

    aget-object v9, v7, v5

    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2

    goto :goto_9

    :cond_2
    if-eqz v6, :cond_3

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_3

    :cond_3
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    :goto_3
    if-eqz v6, :cond_4

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_4

    :cond_4
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    :goto_4
    const/high16 v12, -0x80000000

    if-ne v10, v12, :cond_5

    iget v13, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_5

    :cond_5
    move v13, v10

    :goto_5
    if-ne v11, v12, :cond_6

    iget v12, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_6

    :cond_6
    move v12, v11

    :goto_6
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-gez v14, :cond_7

    iget-object v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    goto :goto_7

    :cond_7
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    :goto_7
    if-gez v14, :cond_8

    const/4 v15, -0x1

    goto :goto_8

    :cond_8
    add-int v15, v14, v13

    add-int/2addr v15, v12

    add-int/2addr v15, v2

    add-int/2addr v15, v3

    :goto_8
    if-le v15, v1, :cond_9

    move v1, v15

    :cond_9
    if-eqz v4, :cond_a

    move/from16 v16, v1

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, v5

    add-int/2addr v2, v1

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, v5

    add-int/2addr v3, v1

    move/from16 v1, v16

    goto :goto_9

    :cond_a
    move/from16 v16, v1

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method public getLayerGravity(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return v1
.end method

.method public getLayerHeight(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return v1
.end method

.method public getLayerInsetBottom(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return v1
.end method

.method public getLayerInsetEnd(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return v1
.end method

.method public getLayerInsetLeft(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return v1
.end method

.method public getLayerInsetRight(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return v1
.end method

.method public getLayerInsetStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return v1
.end method

.method public getLayerInsetTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return v1
.end method

.method public getLayerWidth(I)I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return v1
.end method

.method public getLeftPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    return v0
.end method

.method public getNumberOfLayers()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 11

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    :goto_0
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_2

    :cond_2
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    :goto_2
    if-eqz v3, :cond_3

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_3

    :cond_3
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    :goto_3
    if-ltz v6, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    iget v8, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    :goto_4
    if-ltz v7, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    iget v9, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    :goto_5
    if-ltz v8, :cond_6

    iput v8, p1, Landroid/graphics/Rect;->left:I

    :cond_6
    if-ltz v1, :cond_7

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_7
    if-ltz v9, :cond_8

    iput v9, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    if-ltz v2, :cond_9

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    iget v10, p1, Landroid/graphics/Rect;->left:I

    if-nez v10, :cond_b

    iget v10, p1, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_b

    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_b

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    goto :goto_7

    :cond_b
    :goto_6
    move v4, v5

    :goto_7
    return v4
.end method

.method public getPaddingMode()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return v0
.end method

.method public getStartPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    sget-object v3, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v5, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    nop

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isProjected()Z
    .locals 6

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    or-int/2addr v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_2
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_2
    return v0
.end method

.method refreshPadding()V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v1, v0, p1

    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setHotspot(FF)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method public setId(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method

.method public setLayerGravity(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return-void
.end method

.method public setLayerHeight(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 8

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    return-void
.end method

.method public setLayerInsetBottom(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return-void
.end method

.method public setLayerInsetEnd(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return-void
.end method

.method public setLayerInsetLeft(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return-void
.end method

.method public setLayerInsetRelative(IIIII)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v5, p5

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    return-void
.end method

.method public setLayerInsetRight(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return-void
.end method

.method public setLayerInsetStart(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return-void
.end method

.method public setLayerInsetTop(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return-void
.end method

.method public setLayerSize(III)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return-void
.end method

.method public setLayerWidth(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$200(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->access$202(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
