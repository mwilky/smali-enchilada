.class Lcom/android/server/location/RemoteListenerHelper$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field registrationState:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->access$002(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$300(Lcom/android/server/location/RemoteListenerHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1$1;-><init>(Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
