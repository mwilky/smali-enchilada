.class Lcom/android/server/location/RemoteListenerHelper$2;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$2;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$2;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$2;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$2;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->access$002(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    return-void
.end method
