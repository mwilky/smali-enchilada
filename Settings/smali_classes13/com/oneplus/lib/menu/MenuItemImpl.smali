.class public final Lcom/oneplus/lib/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/oneplus/lib/menu/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    const/16 v1, 0x10

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iput p3, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    iput p2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    iput p4, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    iput p5, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    iput-object p6, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iput p7, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_0
    return v0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/oneplus/lib/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v0
.end method

.method getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/lib/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invoke()Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v2, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isActionButton()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public requestsActionButton()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requiresActionButton()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr v1, p1

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_0
    return-object p0
.end method

.method setCheckedInt(Z)V
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    :goto_0
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    new-instance v1, Lcom/oneplus/lib/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl$1;-><init>(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ActionProvider;->setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemVisibleChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public shouldShowIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showsTextAsAction()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
