.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    .line 903
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 906
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 907
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "newName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120be4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 912
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 913
    return-void

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 917
    .local v1, "name":Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 918
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xfe

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v5, v5, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 921
    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    .line 919
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 922
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 924
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 925
    .local v2, "parent":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V

    .line 928
    .end local v2    # "parent":Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 929
    return-void
.end method
