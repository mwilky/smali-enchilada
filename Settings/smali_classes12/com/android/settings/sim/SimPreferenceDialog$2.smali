.class Lcom/android/settings/sim/SimPreferenceDialog$2;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    iget-object v0, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a04f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v3}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v3}, Lcom/android/settings/sim/SimPreferenceDialog;->access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v4}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v5}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object v5

    aget v5, v5, v3

    iget-object v6, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/settings/sim/SimPreferenceDialog;->access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    iget-object v6, p0, Lcom/android/settings/sim/SimPreferenceDialog$2;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v6}, Lcom/android/settings/sim/SimPreferenceDialog;->access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
