.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private containsKey(I)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x10

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_2

    const/16 v1, 0x6b

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    :goto_1
    goto :goto_2

    :cond_5
    const/16 v2, 0x65

    if-eq v1, v2, :cond_6

    const-string v2, "TimedText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timed text key found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "TimedText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid timed text key found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Landroid/media/TimedText$Justification;

    invoke-direct {v6, v4, v5}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v6, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v3, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5, v4, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    goto :goto_3

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    goto :goto_3

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/TimedText;->mWrapText:I

    iget v4, p0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/TimedText;->mScrollDelay:I

    iget v4, p0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iget v4, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iget v4, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iget v4, p0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    :goto_3
    if-eqz v3, :cond_9

    iget-object v4, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v4, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v1, v4}, Ljava/lang/String;-><init>([BII)V

    new-instance v7, Landroid/media/TimedText$Font;

    invoke-direct {v7, v3, v6}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    iget-object v8, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    new-instance v7, Landroid/media/TimedText$HyperText;

    invoke-direct {v7, v0, v1, v4, v5}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move/from16 v18, v9

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    packed-switch v9, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    move-object/from16 v15, p1

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v1, 0x1

    goto :goto_3

    :pswitch_0
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    nop

    move/from16 v18, v10

    goto :goto_3

    :pswitch_1
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    goto :goto_3

    :pswitch_2
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    goto :goto_3

    :pswitch_3
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    goto :goto_3

    :pswitch_4
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    goto :goto_3

    :cond_0
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    rem-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1

    move v12, v14

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    move v5, v12

    rem-int/lit8 v12, v11, 0x4

    if-lt v12, v10, :cond_2

    move v10, v14

    goto :goto_2

    :cond_2
    move v10, v13

    :goto_2
    move v6, v10

    div-int/lit8 v10, v11, 0x4

    if-ne v10, v14, :cond_3

    move v13, v14

    nop

    :cond_3
    move v7, v13

    nop

    :goto_3
    goto :goto_0

    :cond_4
    move-object/from16 v15, p1

    new-instance v9, Landroid/media/TimedText$Style;

    move-object v10, v9

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    iget-object v10, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    :cond_5
    iget-object v10, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
