.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 886
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 889
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f0a01db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$702(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 891
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "name":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 894
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 898
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1400(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;)V

    .line 903
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    return-void
.end method
