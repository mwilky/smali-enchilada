.class Lcom/oneplus/aod/NotificationManager$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$600(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->access$700(Lcom/oneplus/aod/NotificationManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1, v0}, Lcom/oneplus/aod/NotificationManager;->access$702(Lcom/oneplus/aod/NotificationManager;Z)Z

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->access$500(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->access$200(Lcom/oneplus/aod/NotificationManager;)V

    return-void
.end method
