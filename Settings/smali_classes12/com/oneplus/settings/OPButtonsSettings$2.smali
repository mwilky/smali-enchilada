.class Lcom/oneplus/settings/OPButtonsSettings$2;
.super Ljava/lang/Object;
.source "OPButtonsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 647
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$2;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$2;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$100(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 651
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$2;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$000(Lcom/oneplus/settings/OPButtonsSettings;)V

    .line 652
    return-void
.end method
