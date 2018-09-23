.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupWizardLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getIllustration(II)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$bool;->suwUseTabletLayout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object p1, v4, v3

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    :cond_2
    return-object v1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 11

    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/HeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    const-class v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    const-class v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackground:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackgroundTile:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustration:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationImage:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationHorizontalTile:I

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwDecorPaddingTop:I

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/setupwizardlib/R$dimen;->suw_decor_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/SetupWizardLayout;->setDecorPaddingTop(I)V

    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationAspectRatio:I

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    cmpl-float v7, v6, v7

    if-nez v7, :cond_6

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/setupwizardlib/R$dimen;->suw_illustration_aspect_ratio:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/Illustration;

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_bottom_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hideProgressBar()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method public isProgressBarShown()Z
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_template:I

    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    if-nez v0, :cond_0

    const-string v0, "SetupWizardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring restore instance state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->isProgressBarShown()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    return-object v1
.end method

.method public requireScrollToBottom()V
    .locals 4

    const-class v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithNavigationBar(Lcom/android/setupwizardlib/view/NavigationBar;)V

    goto :goto_0

    :cond_0
    const-string v2, "SetupWizardLayout"

    const-string v3, "Cannot require scroll. Navigation bar is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBackgroundTile(I)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIllustration(II)V
    .locals 3

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/Illustration;

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/Illustration;

    invoke-virtual {v1, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 2

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/Illustration;

    invoke-virtual {v1, p1}, Lcom/android/setupwizardlib/view/Illustration;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    return-void
.end method

.method public showProgressBar()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method
