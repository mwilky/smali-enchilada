.class Lcom/android/systemui/power/OverHeatProtector$7;
.super Landroid/os/CountDownTimer;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$7;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iput-object p6, p0, Lcom/android/systemui/power/OverHeatProtector$7;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p6, 0x5

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/power/OverHeatProtector$7;->mLastTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$7;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v1, v1, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$7;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$1600(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/power/OverHeatProtector$7;->cancel()V

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$7;->val$content:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$7;->mLastTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$7;->mLastTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$7;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1600(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$7;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
