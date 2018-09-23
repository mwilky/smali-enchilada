.class Lcom/oneplus/settings/OPDeviceName$1;
.super Ljava/lang/Object;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDeviceName;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceName;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceName;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceName$1;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    iget v0, p0, Lcom/oneplus/settings/OPDeviceName$1;->num:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceName;->access$100(Lcom/oneplus/settings/OPDeviceName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$200()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceName;->access$300(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceName;->access$300(Lcom/oneplus/settings/OPDeviceName;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceName$1;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-static {}, Lcom/oneplus/settings/OPDeviceName;->access$000()Lcom/oneplus/lib/widget/OPEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/OPDeviceName;->access$102(Lcom/oneplus/settings/OPDeviceName;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
