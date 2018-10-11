.class Lcom/oneplus/aod/NotificationManager$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$100(Lcom/oneplus/aod/NotificationManager;)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$200(Lcom/oneplus/aod/NotificationManager;)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$300(Lcom/oneplus/aod/NotificationManager;)V

    return-void
.end method

.method public onStopDozing()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0, p1}, Lcom/oneplus/aod/NotificationManager;->access$402(Lcom/oneplus/aod/NotificationManager;I)I

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$100(Lcom/oneplus/aod/NotificationManager;)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$200(Lcom/oneplus/aod/NotificationManager;)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$300(Lcom/oneplus/aod/NotificationManager;)V

    return-void
.end method
