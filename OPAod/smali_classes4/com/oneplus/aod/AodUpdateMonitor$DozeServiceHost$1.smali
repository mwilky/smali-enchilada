.class Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Lcom/oneplus/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

.field final synthetic val$callback:Lcom/oneplus/doze/DozeHost$PulseCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iput-object p2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->val$callback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iget-object v0, v0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->resetViewState()V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->val$callback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseFinished()V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iget-object v0, v0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2500(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    return-void
.end method

.method public onPulseStarted()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->val$callback:Lcom/oneplus/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$PulseCallback;->onPulseStarted()V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iget-object v0, v0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2500(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    return-void
.end method
