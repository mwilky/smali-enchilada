.class Lcom/oneplus/lib/app/OPProgressDialog$1;
.super Landroid/os/Handler;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPProgressDialog;->access$000(Lcom/oneplus/lib/app/OPProgressDialog;)Lcom/oneplus/lib/widget/OPProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPProgressDialog;->access$000(Lcom/oneplus/lib/app/OPProgressDialog;)Lcom/oneplus/lib/widget/OPProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPProgressBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPProgressDialog;->access$100(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPProgressDialog;->access$100(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v5}, Lcom/oneplus/lib/app/OPProgressDialog;->access$200(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPProgressDialog;->access$200(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPProgressDialog;->access$300(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    int-to-double v5, v0

    int-to-double v7, v1

    div-double/2addr v5, v7

    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v7}, Lcom/oneplus/lib/app/OPProgressDialog;->access$300(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v8, 0x21

    invoke-virtual {v2, v7, v4, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v3}, Lcom/oneplus/lib/app/OPProgressDialog;->access$400(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog$1;->this$0:Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-static {v2}, Lcom/oneplus/lib/app/OPProgressDialog;->access$400(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
