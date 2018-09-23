.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

.field final synthetic val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string v0, " "

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
