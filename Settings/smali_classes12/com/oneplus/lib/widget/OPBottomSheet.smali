.class public Lcom/oneplus/lib/widget/OPBottomSheet;
.super Ljava/lang/Object;
.source "OPBottomSheet.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_bottom_fullscreen:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_popup_bottom_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPBottomSheet;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
