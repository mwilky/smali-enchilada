.class Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
.super Landroid/os/Handler;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusGpsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusGpsNotification;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusGpsNotification;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsNotificationHander handleMessage mCurrentGpsPackageList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v3, v3, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " msg.what ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/OnePlusGpsNotification;->access$402(Lcom/android/server/OnePlusGpsNotification;Z)Z

    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OnePlusGpsNotification;->access$302(Lcom/android/server/OnePlusGpsNotification;J)J

    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v1}, Lcom/android/server/OnePlusGpsNotification;->access$500(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x50c0032

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v0}, Lcom/android/server/OnePlusGpsNotification;->access$200(Lcom/android/server/OnePlusGpsNotification;)Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    move-result-object v0

    const v1, 0xdac0

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/OnePlusGpsNotification;->access$302(Lcom/android/server/OnePlusGpsNotification;J)J

    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OnePlusGpsNotification;->access$402(Lcom/android/server/OnePlusGpsNotification;Z)Z

    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-virtual {v0}, Lcom/android/server/OnePlusGpsNotification;->notifyPackageNotification()V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xdac0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
