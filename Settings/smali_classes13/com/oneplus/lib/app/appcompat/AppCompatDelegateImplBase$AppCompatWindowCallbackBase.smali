.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.super Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

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

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_3
    return v2
.end method
