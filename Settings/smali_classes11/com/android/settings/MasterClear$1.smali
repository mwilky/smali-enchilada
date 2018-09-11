.class Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClear;

    .line 245
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-static {v0}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 251
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 252
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 253
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.FACTORY_RESET"

    .line 254
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 255
    .local v2, "requestFactoryReset":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    .end local v2    # "requestFactoryReset":Landroid/content/Intent;
    :cond_0
    return-void

    .line 261
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v2, 0x37

    invoke-static {v1, v2}, Lcom/android/settings/MasterClear;->access$000(Lcom/android/settings/MasterClear;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    return-void

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object v1

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v2, v1}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void
.end method
