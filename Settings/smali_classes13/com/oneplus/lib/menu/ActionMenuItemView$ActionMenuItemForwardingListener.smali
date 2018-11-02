.class Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/oneplus/lib/menu/ActionMenuItemView;

    iget-object v2, v2, Lcom/oneplus/lib/menu/ActionMenuItemView;->mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-interface {v0, v2}, Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method
