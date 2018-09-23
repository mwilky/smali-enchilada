.class Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method
