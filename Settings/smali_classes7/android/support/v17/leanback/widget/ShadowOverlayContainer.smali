.class public Landroid/support/v17/leanback/widget/ShadowOverlayContainer;
.super Landroid/widget/FrameLayout;
.source "ShadowOverlayContainer.java"


# static fields
.field public static final SHADOW_DYNAMIC:I = 0x3

.field public static final SHADOW_NONE:I = 0x1

.field public static final SHADOW_STATIC:I = 0x2

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mFocusedZ:F

.field private mInitialized:Z

.field mOverlayColor:I

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mRoundedCornerRadius:I

.field private mRoundedCorners:Z

.field private mShadowImpl:Ljava/lang/Object;

.field private mShadowType:I

.field private mUnfocusedZ:F

.field private mWrappedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZFFI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shadowType"    # I
    .param p3, "hasColorDimOverlay"    # Z
    .param p4, "unfocusedZ"    # F
    .param p5, "focusedZ"    # F
    .param p6, "roundedCornerRadius"    # I

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 113
    iput p4, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mUnfocusedZ:F

    .line 114
    iput p5, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mFocusedZ:F

    .line 115
    invoke-virtual {p0, p2, p3, p6}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->initialize(IZI)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 102
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useStaticShadow()V

    .line 103
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useDynamicShadow()V

    .line 104
    return-void
.end method

.method public static prepareParentForShadow(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 138
    invoke-static {p0}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->prepareParent(Landroid/view/ViewGroup;)V

    .line 139
    return-void
.end method

.method public static supportsDynamicShadow()Z
    .locals 1

    .line 129
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->supportsDynamicShadow()Z

    move-result v0

    return v0
.end method

.method public static supportsShadow()Z
    .locals 1

    .line 122
    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 248
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    :cond_0
    return-void
.end method

.method public getShadowType()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    return v0
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method initialize(IZI)V
    .locals 5
    .param p1, "shadowType"    # I
    .param p2, "hasColorDimOverlay"    # Z
    .param p3, "roundedCornerRadius"    # I

    .line 216
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-nez v0, :cond_2

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    .line 220
    iput p3, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mRoundedCornerRadius:I

    .line 221
    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mRoundedCorners:Z

    .line 222
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 223
    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 225
    :pswitch_0
    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mUnfocusedZ:F

    iget v3, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mFocusedZ:F

    iget v4, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mRoundedCornerRadius:I

    invoke-static {p0, v2, v3, v4}, Landroid/support/v17/leanback/widget/ShadowHelper;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowImpl:Ljava/lang/Object;

    .line 227
    goto :goto_1

    .line 229
    :pswitch_1
    invoke-static {p0}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->addStaticShadow(Landroid/view/ViewGroup;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowImpl:Ljava/lang/Object;

    .line 232
    :goto_1
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setWillNotDraw(Z)V

    .line 234
    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 239
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setWillNotDraw(Z)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 242
    :goto_2
    return-void

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(ZZ)V
    .locals 1
    .param p1, "hasShadow"    # Z
    .param p2, "hasColorDimOverlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->initialize(ZZZ)V

    .line 191
    return-void
.end method

.method public initialize(ZZZ)V
    .locals 3
    .param p1, "hasShadow"    # Z
    .param p2, "hasColorDimOverlay"    # Z
    .param p3, "roundedCorners"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x1

    .local v0, "shadowType":I
    goto :goto_0

    .line 205
    .end local v0    # "shadowType":I
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 207
    .restart local v0    # "shadowType":I
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 209
    .local v1, "roundedCornerRadius":I
    :goto_1
    invoke-virtual {p0, v0, p2, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->initialize(IZI)V

    .line 210
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 316
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 318
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    sget-object v1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 320
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setPivotX(F)V

    .line 321
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setPivotY(F)V

    .line 323
    :cond_0
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1
    .param p1, "overlayColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 268
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    if-eq p1, v0, :cond_0

    .line 269
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->invalidate()V

    .line 274
    :cond_0
    return-void
.end method

.method public setShadowFocusLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .line 258
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowImpl:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowImpl:Ljava/lang/Object;

    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    invoke-static {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setShadowFocusLevel(Ljava/lang/Object;IF)V

    .line 261
    :cond_0
    return-void
.end method

.method public useDynamicShadow()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useDynamicShadow(FF)V

    .line 147
    return-void
.end method

.method public useDynamicShadow(FF)V
    .locals 2
    .param p1, "unfocusedZ"    # F
    .param p2, "focusedZ"    # F

    .line 154
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-nez v0, :cond_1

    .line 157
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 159
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mUnfocusedZ:F

    .line 160
    iput p2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mFocusedZ:F

    .line 162
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useStaticShadow()V
    .locals 2

    .line 168
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 280
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 284
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 288
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 291
    .local v1, "wrapped_lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v4, :cond_1

    move v3, v4

    nop

    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v1    # "wrapped_lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->addView(Landroid/view/View;)V

    .line 300
    :goto_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mRoundedCorners:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 301
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    .line 303
    :cond_3
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    .line 304
    return-void

    .line 281
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
