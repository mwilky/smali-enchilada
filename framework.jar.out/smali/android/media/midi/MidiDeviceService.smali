.class public abstract Landroid/media/midi/MidiDeviceService;
.super Landroid/app/Service;
.source "MidiDeviceService.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.midi.MidiDeviceService"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceService"


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mMidiManager:Landroid/media/midi/IMidiManager;

.field private mServer:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/media/midi/MidiDeviceService$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceService$1;-><init>(Landroid/media/midi/MidiDeviceService;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-void
.end method


# virtual methods
.method public final getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public final getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.media.midi.MidiDeviceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 5

    const-string/jumbo v0, "midi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MidiDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find MidiDeviceInfo for MidiDeviceService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/midi/MidiReceiver;

    move-object v1, v2

    :cond_1
    new-instance v2, Landroid/media/midi/MidiDeviceServer;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-direct {v2, v3, v1, v0, v4}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MidiDeviceService"

    const-string v2, "RemoteException in IMidiManager.getServiceDeviceInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0

    return-void
.end method

.method public abstract onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;
.end method
