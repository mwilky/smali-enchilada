.class Lcom/oneplus/aod/AodUpdateMonitor$3;
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

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1900(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1800(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1902(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$3;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method
