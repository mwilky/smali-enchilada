.class Lcom/oneplus/aod/AodUpdateMonitor$2;
.super Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/AodUpdateMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 191
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$2;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V

    return-void
.end method
