.class public Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;
.super Landroid/support/v17/leanback/graphics/CompositeDrawable;
.source "DetailsParallaxDrawable.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBottomDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;

    .line 108
    invoke-direct {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_cover_drawable_parallax_movement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    .line 111
    .local v0, "verticalMovementMax":I
    new-instance v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;-><init>()V

    .line 112
    .local v1, "coverDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    const-string v2, "verticalOffset"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    .line 113
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    .line 115
    .local v7, "coverDrawableParallaxTarget":Landroid/support/v17/leanback/widget/ParallaxTarget;
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;
    .param p3, "coverDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottomDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "coverDrawableParallaxTarget"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 98
    invoke-direct {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;-><init>()V

    .line 100
    invoke-virtual/range {p0 .. p5}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;
    .param p3, "coverDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "coverDrawableParallaxTarget"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 79
    invoke-direct {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;-><init>()V

    .line 80
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    .line 81
    return-void
.end method

.method private static getDefaultBackgroundColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 134
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->defaultBrandColorDark:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_default_brand_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method connect(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;
    .param p3, "coverDrawableParallaxTarget"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 175
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/DetailsParallax;->getOverviewRowTop()Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    move-result-object v0

    .line 176
    .local v0, "frameTop":Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/DetailsParallax;->getOverviewRowBottom()Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    move-result-object v1

    .line 178
    .local v1, "frameBottom":Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 180
    .local v2, "fromValue":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    .line 181
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 182
    .local v3, "toValue":I
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atAbsolute(I)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atAbsolute(I)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {p2, v5}, Landroid/support/v17/leanback/widget/DetailsParallax;->addEffect([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    move-result-object v5

    .line 183
    invoke-virtual {v5, p3}, Landroid/support/v17/leanback/widget/ParallaxEffect;->target(Landroid/support/v17/leanback/widget/ParallaxTarget;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    .line 188
    new-array v5, v4, [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atMax()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atMin()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p2, v5}, Landroid/support/v17/leanback/widget/DetailsParallax;->addEffect([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    move-result-object v5

    .line 189
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v6

    sget-object v9, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_ABSOLUTE:Landroid/util/Property;

    invoke-virtual {v5, v6, v9}, Landroid/support/v17/leanback/widget/ParallaxEffect;->target(Ljava/lang/Object;Landroid/util/Property;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    .line 192
    new-array v4, v4, [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atMax()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atMin()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2, v4}, Landroid/support/v17/leanback/widget/DetailsParallax;->addEffect([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    move-result-object v4

    .line 193
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v5

    sget-object v6, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_ABSOLUTE:Landroid/util/Property;

    invoke-virtual {v4, v5, v6}, Landroid/support/v17/leanback/widget/ParallaxEffect;->target(Ljava/lang/Object;Landroid/util/Property;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    .line 194
    return-void
.end method

.method public getBottomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    return v0
.end method

.method init(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;
    .param p3, "coverDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottomDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "coverDrawableParallaxTarget"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 121
    instance-of v0, p4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p4

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 123
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {p1}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 127
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->addChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iput-object p4, p0, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p4}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->addChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0, p1, p2, p5}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->connect(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    .line 130
    return-void
.end method

.method public setSolidColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 159
    return-void
.end method
