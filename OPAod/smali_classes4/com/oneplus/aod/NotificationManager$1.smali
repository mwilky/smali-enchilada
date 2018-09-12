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
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationManager;

    .line 110
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$100(Lcom/oneplus/aod/NotificationManager;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$200(Lcom/oneplus/aod/NotificationManager;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$300(Lcom/oneplus/aod/NotificationManager;)V

    .line 118
    return-void
.end method

.method public onStopDozing()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 123
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 127
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0, p1}, Lcom/oneplus/aod/NotificationManager;->access$402(Lcom/oneplus/aod/NotificationManager;I)I

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$000(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 130
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$100(Lcom/oneplus/aod/NotificationManager;)V

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$200(Lcom/oneplus/aod/NotificationManager;)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$1;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$300(Lcom/oneplus/aod/NotificationManager;)V

    .line 133
    return-void
.end method
