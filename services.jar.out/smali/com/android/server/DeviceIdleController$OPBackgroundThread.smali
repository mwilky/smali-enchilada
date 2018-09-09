.class final Lcom/android/server/DeviceIdleController$OPBackgroundThread;
.super Landroid/os/HandlerThread;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OPBackgroundThread"
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1327
    const-string v0, "OPBackgroundThread"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1328
    return-void
.end method

.method public static destroyThread()V
    .locals 1

    .line 1364
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-eqz v0, :cond_0

    .line 1365
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->quit()Z

    .line 1366
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1367
    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1369
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 1358
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "nDelay"    # J

    .line 1361
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1362
    return-void
.end method

.method public static prepareThread()V
    .locals 2

    .line 1330
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1332
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->start()V

    .line 1333
    new-instance v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread$1;

    sget-object v1, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1347
    :cond_0
    return-void
.end method

.method public static removeMessages(I)V
    .locals 1
    .param p0, "msgId"    # I

    .line 1355
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    return-void
.end method

.method public static sendEmptyMessageDelayed(IJ)V
    .locals 3
    .param p0, "msgId"    # I
    .param p1, "delayMillis"    # J

    .line 1349
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessageDelayed, msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", run on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1353
    return-void
.end method
