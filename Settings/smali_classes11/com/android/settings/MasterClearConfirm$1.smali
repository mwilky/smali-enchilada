.class Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClearConfirm;

    .line 70
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm$1;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 123
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 127
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120910

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 129
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12090f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 73
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 79
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 80
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oem_lock"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    .line 82
    .local v1, "oemLockManager":Landroid/service/oemlock/OemLockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 83
    invoke-virtual {v2}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    new-instance v2, Lcom/android/settings/MasterClearConfirm$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MasterClearConfirm$1$1;-><init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v2, v3}, Lcom/android/settings/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)V

    .line 120
    :goto_0
    return-void
.end method
