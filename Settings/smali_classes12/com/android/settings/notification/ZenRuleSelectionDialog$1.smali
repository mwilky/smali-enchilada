.class Lcom/android/settings/notification/ZenRuleSelectionDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

.field final synthetic val$ri:Lcom/android/settings/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-boolean v0, v0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;->onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;->onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V

    :goto_0
    return-void
.end method
