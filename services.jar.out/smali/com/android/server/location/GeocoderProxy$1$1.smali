.class Lcom/android/server/location/GeocoderProxy$1$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy$1;->run(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GeocoderProxy$1;

.field final synthetic val$provider:Landroid/location/IGeocodeProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy$1;Landroid/location/IGeocodeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->val$provider:Landroid/location/IGeocodeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    const-string v0, "GeocoderProxy"

    const-string v1, "getFromLocation...Start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->val$provider:Landroid/location/IGeocodeProvider;

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-wide v3, v3, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-object v5, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-wide v5, v5, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget v7, v7, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v8, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v8, v8, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v9, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v9, v9, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-interface/range {v2 .. v9}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v0, "GeocoderProxy"

    const-string v1, "getFromLocation...Successful!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "GeocoderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :goto_1
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    :goto_2
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v2, v2, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v2}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
