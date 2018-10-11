.class Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$2;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStopDozing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$2;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$2;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->access$3500(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V

    return-void
.end method
