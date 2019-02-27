.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 15

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    mul-long v11, v2, v9

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    mul-long/2addr v9, v5

    mul-long/2addr v9, v13

    add-long/2addr v11, v9

    mul-long/2addr v13, v0

    add-long/2addr v11, v13

    add-long/2addr v11, v7

    return-wide v11
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 12

    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [[Landroid/media/TextTrackCueSpan;

    iput-object v3, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v2, v3

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v9, Landroid/media/TextTrackCueSpan;

    const-wide/16 v10, -0x1

    invoke-direct {v9, v7, v10, v11}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v9, v8, v5

    iget-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v10, v6, 0x1

    aput-object v8, v9, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v10

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SRTTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onData([BZJ)V
    .locals 16

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v4, Landroid/media/TextTrackCue;

    invoke-direct {v4}, Landroid/media/TextTrackCue;-><init>()V

    const-string v5, "-->"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/media/TextTrackCue;->mStartTimeMs:J

    const/4 v7, 0x1

    aget-object v8, v5, v7

    invoke-static {v8}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/media/TextTrackCue;->mEndTimeMs:J

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [[Landroid/media/TextTrackCueSpan;

    iput-object v11, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    new-array v11, v6, [Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v4, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v7, [Landroid/media/TextTrackCueSpan;

    new-instance v14, Landroid/media/TextTrackCueSpan;

    move-object v15, v8

    const-wide/16 v7, -0x1

    invoke-direct {v14, v12, v7, v8}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v14, v13, v6

    move-object v7, v13

    iget-object v8, v4, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    aput-object v12, v8, v9

    iget-object v8, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v13, v9, 0x1

    aput-object v7, v8, v9
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    move v9, v13

    move-object v8, v15

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move-object v15, v8

    move-object/from16 v6, p0

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    move-object/from16 v6, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    :goto_4
    const-string v1, "SRTTrack"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    :goto_5
    const-string v1, "SRTTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    nop

    :goto_7
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    move-object v2, v1

    check-cast v2, Landroid/media/TextTrackCue;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v5, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v6, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v8, 0x63

    invoke-virtual {v6, v8, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void
.end method
