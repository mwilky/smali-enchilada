.class Lcom/oneplus/aod/AodUpdateMonitor$1;
.super Landroid/app/UserSwitchObserver;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AodUpdateMonitor"

    const-string v1, "onUserSwitchComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$102(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/aod/Utils;->updateDozeSettings(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->updateDisplayPeriod()V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$1;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$300(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    return-void
.end method
