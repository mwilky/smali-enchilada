.class Lcom/oneplus/settings/OPScreenColorModeForProvision$1;
.super Ljava/lang/Object;
.source "OPScreenColorModeForProvision.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenColorModeForProvision;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPScreenColorModeForProvision;

    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v3, "com.oneplus.provision.FontSetActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    iget-object v2, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->startActivity(Landroid/content/Intent;)V

    .line 31
    iget-object v2, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    const v3, 0x7f01003f

    const v4, 0x7f010040

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->overridePendingTransition(II)V

    .line 32
    return-void
.end method
