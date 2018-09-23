.class final Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WiredDevConnectEvent"
.end annotation


# instance fields
.field final mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWiredDeviceConnectionState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget v1, v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget v1, v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    invoke-static {v1}, Landroid/media/AudioSystem;->deviceStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;->mState:Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
