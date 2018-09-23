.class Lcom/oneplus/settings/ui/OPListDialog$3;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0283

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x7f0a0284

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0285

    if-ne v2, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const v2, 0x7f0a0286

    if-ne v2, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const v2, 0x7f0a0287

    if-ne v2, v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2, v0}, Lcom/oneplus/settings/ui/OPListDialog;->access$202(Lcom/oneplus/settings/ui/OPListDialog;I)I

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListItemClick(I)V

    :cond_5
    return-void
.end method
