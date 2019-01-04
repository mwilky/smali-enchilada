.class Lcom/oneplus/aod/AodUpdateMonitor$5;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
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

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$5;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$5;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4000(Lcom/oneplus/aod/AodUpdateMonitor;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long v4, v0, v2

    mul-long/2addr v4, v2

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$5;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
