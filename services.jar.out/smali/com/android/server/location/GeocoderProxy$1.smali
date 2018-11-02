.class Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;DDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iput-wide p5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iput p7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iput-object p8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iput-object p9, p0, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 5

    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/location/GeocoderProxy$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/GeocoderProxy$1$1;-><init>(Lcom/android/server/location/GeocoderProxy$1;Landroid/location/IGeocodeProvider;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-static {v2}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    const-string v2, "GeocoderProxy"

    const-string v3, "getFromLocation...wait end!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
