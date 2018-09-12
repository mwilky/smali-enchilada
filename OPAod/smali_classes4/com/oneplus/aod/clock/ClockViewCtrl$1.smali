.class Lcom/oneplus/aod/clock/ClockViewCtrl$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "ClockViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/ClockViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/clock/ClockViewCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 129
    iput-object p1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$1;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 132
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$1;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0, p1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$502(Lcom/oneplus/aod/clock/ClockViewCtrl;I)I

    .line 134
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$1;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$200(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$1;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$400(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    .line 136
    return-void
.end method
