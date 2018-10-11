.class Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mSetIndicatorInfo:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    :goto_0
    return-object v1
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
