.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .locals 0

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    move v7, v1

    if-gez v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v1

    move v8, v1

    packed-switch v8, :pswitch_data_0

    const-string v1, "MidiOutputPort"

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->flush()V

    goto :goto_2

    :pswitch_1
    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v3

    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v4

    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v5

    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MidiOutputPort"

    const-string/jumbo v3, "read failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_4
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v2}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
