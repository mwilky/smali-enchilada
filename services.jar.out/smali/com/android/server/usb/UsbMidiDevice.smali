.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method private constructor <init>(III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    move v0, p3

    new-array v1, v0, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object v0
.end method

.method private closeLocked()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .locals 5

    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "nativeGetSubdeviceCount failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string v3, "UsbMidiDevice"

    const-string v4, "createDeviceServer failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v2
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .locals 15

    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "nativeOpen failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    array-length v2, v0

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v5, v2, [Landroid/system/StructPollfd;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    new-array v5, v2, [Ljava/io/FileInputStream;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v0, v5

    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    iput-object v6, v7, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v7, v8, v5

    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v3, [Ljava/io/FileOutputStream;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-array v5, v3, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v0, v5

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v7, v6, v5

    new-instance v6, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v6}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v6, v7, v5

    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v7, v7, v5

    invoke-virtual {v6}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v5}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v5

    new-instance v6, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v7, "UsbMidiDevice input thread"

    invoke-direct {v6, p0, v7, v5}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v6}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    nop

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v12, v6, v1

    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v13, v6, v1

    move v11, v1

    new-instance v14, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbMidiDevice output thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v14

    move-object v7, p0

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    invoke-virtual {v14}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v4
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10

    const-string/jumbo v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const-string v1, "UsbMidiDevice"

    const-string v2, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v1, :cond_1

    return v9

    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 6

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "device_address"

    const-wide v3, 0x10900000003L

    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "card"

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p2, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "device"

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p2, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method
