.class Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v7

    goto/16 :goto_3

    :cond_0
    const/4 v8, 0x0

    move v1, v8

    :goto_1
    move v9, v1

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v9, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v9

    move-object v10, v1

    iget-short v1, v10, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    sget v3, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-short v1, v10, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iput-short v8, v10, Landroid/system/StructPollfd;->revents:S

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v9, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v9

    const/4 v3, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_3
    add-int/lit8 v1, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    nop

    :goto_4
    const-string v1, "UsbMidiDevice"

    const-string/jumbo v2, "input thread exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
