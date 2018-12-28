.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;
.super Landroid/os/CountDownTimer;
.source "OPShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShutdownActivity"

    const-string v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "ShutdownActivity"

    const-string v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const-wide/16 v1, 0x3e8

    div-long v3, p1, v1

    long-to-int v3, v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v6, 0x7f120cdc

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v6, 0x7f120cdd

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    const-string v0, "ShutdownActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showDialog time = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->showDialog(I)V

    return-void
.end method
