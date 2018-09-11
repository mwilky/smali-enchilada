.class Lcom/android/settings/password/SetupSkipDialog$1;
.super Ljava/lang/Object;
.source "SetupSkipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/SetupSkipDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settings/password/SetupSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/password/SetupSkipDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/password/SetupSkipDialog;

    .line 83
    iput-object p1, p0, Lcom/android/settings/password/SetupSkipDialog$1;->this$0:Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->this$0:Lcom/android/settings/password/SetupSkipDialog;

    invoke-virtual {v0}, Lcom/android/settings/password/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 96
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v3, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 103
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v3, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    const v3, 0x7f01003f

    const v4, 0x7f010040

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 112
    iget-object v1, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 115
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method
