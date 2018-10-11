.class public Lcom/oneplus/lib/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

.field private mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuDialogHelper;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/ListMenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    :goto_0
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v3}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    iput-object p1, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuDialogHelper;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v4}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-void
.end method
