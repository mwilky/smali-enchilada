.class Lcom/android/server/content/SyncManager$13;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p3, p0, Lcom/android/server/content/SyncManager$13;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$1876(Lcom/android/server/content/SyncManager;I)Z

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onDeviceProvisioned()V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
