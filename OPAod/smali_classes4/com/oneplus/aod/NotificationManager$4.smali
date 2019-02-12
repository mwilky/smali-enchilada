.class Lcom/oneplus/aod/NotificationManager$4;
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

    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$4;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$4;->this$0:Lcom/oneplus/aod/NotificationManager;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$4;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->access$600(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-static {v0, v3}, Lcom/oneplus/aod/NotificationManager;->access$702(Lcom/oneplus/aod/NotificationManager;Z)Z

    return-void
.end method
