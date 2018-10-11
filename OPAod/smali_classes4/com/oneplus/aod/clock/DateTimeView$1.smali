.class Lcom/oneplus/aod/clock/DateTimeView$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/DateTimeView;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/clock/DateTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->access$200(Lcom/oneplus/aod/clock/DateTimeView;Z)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$300(Lcom/oneplus/aod/clock/DateTimeView;)Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$400(Lcom/oneplus/aod/clock/DateTimeView;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->access$200(Lcom/oneplus/aod/clock/DateTimeView;Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$000(Lcom/oneplus/aod/clock/DateTimeView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartDozing()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    const-string v0, "DateTimeView"

    const-string v1, "onStartDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$000(Lcom/oneplus/aod/clock/DateTimeView;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$100(Lcom/oneplus/aod/clock/DateTimeView;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$000(Lcom/oneplus/aod/clock/DateTimeView;)V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserInfoChanged(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$100(Lcom/oneplus/aod/clock/DateTimeView;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$000(Lcom/oneplus/aod/clock/DateTimeView;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/DateTimeView$1;->this$0:Lcom/oneplus/aod/clock/DateTimeView;

    invoke-static {v0}, Lcom/oneplus/aod/clock/DateTimeView;->access$100(Lcom/oneplus/aod/clock/DateTimeView;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method
