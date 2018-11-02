.class public Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;,
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;,
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;,
        Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/oneplus/lib/widget/actionbar/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Lcom/oneplus/lib/widget/actionbar/Toolbar;II)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/oneplus/lib/widget/actionbar/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/oneplus/lib/widget/actionbar/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$JellybeanMr2Delegate;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    :goto_0
    iput-object p3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iput p5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    iput p6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    if-nez p4, :cond_4

    new-instance v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1

    :cond_4
    iput-object p4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setPosition(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public getDrawerArrowDrawable()Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    return-object v0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setPosition(F)V

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setPosition(F)V

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setPosition(F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->toggle()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setActionBarDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mActivityImpl:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerArrowDrawable(Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    :cond_2
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public syncState()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setPosition(F)V

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method

.method toggle()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :cond_1
    :goto_0
    return-void
.end method
