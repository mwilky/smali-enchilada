.class Lcom/android/server/usb/UsbMidiDevice$3;
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

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    if-nez v0, :cond_0

    nop

    const-string v0, "UsbMidiDevice"

    const-string/jumbo v1, "output thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v2, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "UsbMidiDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write failed for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
