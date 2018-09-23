.class Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;
.super Lcom/oneplus/lib/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZI)V

    const v0, 0x800005

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    iget-object p1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->close()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
