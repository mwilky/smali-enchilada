.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;
.super Lcom/oneplus/lib/app/appcompat/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionMode;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    new-instance v0, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onCreateActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iput-object p0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->animateToMode(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->closeMode()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-boolean v2, v2, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iput-object v0, v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onPrepareActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onCloseSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onActionItemClicked(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitleOptionalHint(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
