.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    iget-object v4, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "^\\s+"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    if-lez v6, :cond_2

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const-string v8, ""

    :goto_1
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v7}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    const-string v0, " +"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_13

    aget-object v12, v9, v11

    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    if-ne v13, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v12, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v0, "region"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object v14, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto/16 :goto_6

    :cond_4
    const-string/jumbo v0, "vertical"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "rl"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v4, 0x65

    iput v4, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto/16 :goto_6

    :cond_5
    const-string/jumbo v0, "lr"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v4, 0x66

    iput v4, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto/16 :goto_6

    :cond_6
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v4, "cue setting"

    const-string v2, "has invalid value"

    invoke-static {v0, v4, v15, v2, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v0, "line"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    nop

    :try_start_0
    const-string v0, "%"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    const-string v0, ".*[^0-9].*"

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v4, "cue setting"

    const-string v2, "contains an invalid character"

    invoke-static {v0, v4, v15, v2, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v4, "cue setting"

    move-object/from16 v16, v0

    const-string v0, "is not numeric or percentage"

    invoke-static {v2, v4, v15, v0, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    goto/16 :goto_6

    :cond_a
    const-string/jumbo v0, "position"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v4, "cue setting"

    move-object/from16 v17, v0

    const-string v0, "is not numeric or percentage"

    invoke-static {v2, v4, v15, v0, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    goto/16 :goto_6

    :cond_b
    const-string/jumbo v0, "size"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_2
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/TextTrackCue;->mSize:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v4, "cue setting"

    move-object/from16 v18, v0

    const-string v0, "is not numeric or percentage"

    invoke-static {v2, v4, v15, v0, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    goto/16 :goto_6

    :cond_c
    const-string v0, "align"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "start"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc9

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    :cond_d
    const-string/jumbo v0, "middle"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc8

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    :cond_e
    const-string v0, "end"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xca

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    :cond_f
    const-string/jumbo v0, "left"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcb

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    :cond_10
    const-string/jumbo v0, "right"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcc

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    :cond_11
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v2, "cue setting"

    const-string v4, "has invalid value"

    invoke-static {v0, v2, v15, v4, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_12
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_13
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget-object v0, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v0, :cond_14

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_14

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-eq v0, v2, :cond_15

    :cond_14
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const-string v2, ""

    iput-object v2, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    :cond_15
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v2}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void
.end method
