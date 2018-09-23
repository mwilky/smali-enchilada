.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;
.super Ljava/lang/Object;
.source "OPPowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;

    :cond_0
    const-string v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.POWER_CONFIRM_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
