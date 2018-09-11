.class Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;
.super Ljava/lang/Object;
.source "OPScreenColorModeForSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    .line 21
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    iput-object p2, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.setupwizard"

    const-string v2, "com.oneplus.setupwizard.OneplusFontSetActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    iget-object v2, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 29
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->overridePendingTransition(II)V

    .line 30
    return-void
.end method
