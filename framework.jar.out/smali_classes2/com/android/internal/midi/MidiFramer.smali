.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x%02X, "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    move/from16 v9, p2

    move v10, v1

    move v1, v2

    :goto_1
    move/from16 v11, p3

    if-ge v1, v11, :cond_9

    aget-byte v12, p1, v9

    and-int/lit16 v13, v12, 0xff

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-lt v13, v3, :cond_6

    const/16 v3, 0xf0

    if-ge v13, v3, :cond_1

    iput-byte v12, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_3

    :cond_1
    const/16 v5, 0xf8

    if-ge v13, v5, :cond_4

    if-ne v13, v3, :cond_2

    iput-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v3, v9

    :goto_2
    move v10, v3

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0xf7

    if-ne v13, v3, :cond_3

    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v9, v10

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v12, v3, v2

    iput-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_3

    :cond_4
    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v9, v10

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    add-int/lit8 v10, v9, 0x1

    :cond_5
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v6, 0x1

    move-object/from16 v4, p1

    move v5, v9

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_3

    :cond_6
    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v12, v3, v5

    iget v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v3, :cond_8

    iget-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget-byte v5, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    aput-byte v5, v3, v2

    :cond_7
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/16 v16, 0x0

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move-object v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    :cond_8
    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    if-ltz v10, :cond_a

    if-ge v10, v9, :cond_a

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v9, v10

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_a
    return-void
.end method
