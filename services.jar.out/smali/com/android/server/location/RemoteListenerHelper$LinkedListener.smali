.class Lcom/android/server/location/RemoteListenerHelper$LinkedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkedListener"
.end annotation


# instance fields
.field private mBlock:Z

.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mBlock:Z

    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$400(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Listener died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mUid:I

    return v0
.end method

.method public getUnderlyingListener()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT",
            "Listener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    return-object v0
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mUid:I

    return-void
.end method
