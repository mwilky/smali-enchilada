.class public Lcom/oneplus/aod/clock/OPTextClock;
.super Landroid/view/View;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/OPTextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final FONT_DEFAULT:Ljava/lang/String; = "sans-serif"

.field private static final FONT_DIGITAL:Ljava/lang/String; = "sans-serif-condensed"

.field private static final FONT_HOUR:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_MIN:Ljava/lang/String; = "sans-serif-thin"


# instance fields
.field private mAmPmPaint:Landroid/graphics/Paint;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

.field private mFontPadding:F

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mHourPaint:Landroid/graphics/Paint;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 135
    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 224
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$1;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$2;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 225
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 226
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->init()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 259
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$1;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/oneplus/aod/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextClock$2;-><init>(Lcom/oneplus/aod/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    .line 265
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    .line 266
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 271
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    nop

    .line 276
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->init()V

    .line 277
    return-void

    .line 273
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 561
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/oneplus/aod/clock/OPTextClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextClock;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/clock/OPTextClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextClock;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/clock/OPTextClock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextClock;

    .line 107
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/clock/OPTextClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextClock;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/clock/OPTextClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextClock;

    .line 107
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat(Z)V

    .line 518
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .param p1, "handleTicker"    # Z

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 540
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 541
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 542
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 543
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 546
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 548
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    .line 549
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    .line 551
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    .line 552
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 555
    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    .line 314
    :goto_0
    return-void
.end method

.method private drawClockClassic(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 616
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    .line 618
    .local v2, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getWidth()I

    move-result v3

    .line 619
    .local v3, "w":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 621
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v5, 0x2

    new-array v6, v5, [C

    .line 622
    .local v6, "c":[C
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v7

    .line 624
    .local v7, "time":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, " "

    goto :goto_0

    :cond_0
    const-string v8, "."

    .line 625
    .local v8, "breakPoint":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 627
    .local v9, "breakIndex":I
    const-string v10, ""

    .line 628
    .local v10, "hour":Ljava/lang/String;
    const-string v11, ""

    .line 630
    .local v11, "min":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v13, v10

    move v10, v12

    .local v10, "i":I
    .local v13, "hour":Ljava/lang/String;
    :goto_1
    if-ge v10, v9, :cond_1

    .line 631
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 630
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 634
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v10, v9, 0x1

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v10, v14, :cond_2

    .line 635
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 634
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 638
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 640
    .local v10, "hourSize":I
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f060089

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 641
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v15, "sans-serif-regular"

    invoke-static {v15, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 642
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 643
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 644
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v14, "sans-serif-thin"

    invoke-static {v14, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 645
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 646
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060085

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 647
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v14, "sans-serif-regular"

    invoke-static {v14, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 651
    if-eqz v2, :cond_6

    .line 655
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v11, v12, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 656
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    iget v15, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v15

    int-to-float v5, v5

    .line 657
    .local v5, "drawX":F
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    .line 658
    .local v15, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v12, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iput v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 659
    iget v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v5, v12, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 662
    const/4 v12, 0x2

    new-array v14, v12, [F

    .line 663
    .local v14, "width":[F
    iget-object v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 664
    iget-object v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 665
    .end local v15    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v12, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v15, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    iput v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 666
    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    sub-float/2addr v5, v15

    .line 669
    const/4 v15, 0x2

    if-ne v10, v15, :cond_4

    .line 670
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    aput-char v16, v6, v15

    .line 672
    move/from16 v17, v2

    aget-char v2, v6, v15

    .end local v2    # "isRTL":Z
    .local v17, "isRTL":Z
    const/16 v15, 0x31

    if-ne v2, v15, :cond_3

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_3

    :cond_3
    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 673
    .local v2, "color":I
    :goto_3
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    const/4 v15, 0x1

    aget v16, v14, v15

    sub-float v5, v5, v16

    .line 675
    move/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "color":I
    .local v18, "color":I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v15, v6, v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v19, v3

    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v3    # "w":I
    .local v19, "w":I
    invoke-virtual {v1, v2, v5, v15, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v18    # "color":I
    goto :goto_4

    .line 678
    .end local v17    # "isRTL":Z
    .end local v19    # "w":I
    .local v2, "isRTL":Z
    .restart local v3    # "w":I
    :cond_4
    move/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "isRTL":Z
    .end local v3    # "w":I
    .restart local v17    # "isRTL":Z
    .restart local v19    # "w":I
    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v6, v2

    .line 680
    aget-char v3, v6, v2

    const/16 v2, 0x31

    if-ne v3, v2, :cond_5

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_5

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 681
    .local v2, "color":I
    :goto_5
    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    const/4 v3, 0x0

    aget v15, v14, v3

    sub-float/2addr v5, v15

    .line 683
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v3, v6, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v20, v2

    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v2    # "color":I
    .local v20, "color":I
    invoke-virtual {v1, v3, v5, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 697
    .end local v5    # "drawX":F
    .end local v14    # "width":[F
    nop

    .line 747
    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move/from16 v5, v20

    goto/16 :goto_9

    .line 698
    .end local v12    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v17    # "isRTL":Z
    .end local v19    # "w":I
    .end local v20    # "color":I
    .local v2, "isRTL":Z
    .restart local v3    # "w":I
    :cond_6
    move/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "isRTL":Z
    .end local v3    # "w":I
    .restart local v17    # "isRTL":Z
    .restart local v19    # "w":I
    const/4 v2, 0x0

    .line 702
    .local v2, "hourWidth":F
    const-string v3, "sans-serif-regular"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 703
    .local v3, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v5, 0x31

    if-ne v12, v5, :cond_7

    iget v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_6

    :cond_7
    iget v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 704
    .local v5, "color":I
    :goto_6
    iget-object v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    iget-object v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 706
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v6, v12

    .line 707
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    aget-char v15, v6, v12

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v2

    const/4 v2, 0x1

    invoke-virtual {v14, v15, v12, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 708
    .end local v2    # "hourWidth":F
    .local v21, "hourWidth":F
    iget v2, v4, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    .line 709
    .local v2, "offsetX":I
    iget-object v12, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 710
    .restart local v12    # "fm":Landroid/graphics/Paint$FontMetrics;
    iget v14, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iput v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 711
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    const/4 v15, 0x0

    aget-char v3, v6, v15

    .end local v3    # "tf":Landroid/graphics/Typeface;
    .local v22, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v14, v2

    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move-object/from16 v23, v4

    iget-object v4, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v4    # "rect":Landroid/graphics/Rect;
    .local v23, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v14, v15, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 713
    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 714
    .local v4, "width":[F
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 716
    const/4 v14, 0x0

    aget v14, v4, v14

    .line 718
    .end local v21    # "hourWidth":F
    .local v14, "hourWidth":F
    if-ne v10, v3, :cond_9

    .line 719
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v6, v3

    .line 721
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v3, 0x31

    if-ne v15, v3, :cond_8

    iget v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_7

    :cond_8
    iget v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 722
    .end local v5    # "color":I
    .local v3, "color":I
    :goto_7
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    const/4 v15, 0x1

    aget-char v3, v6, v15

    .end local v3    # "color":I
    .local v24, "color":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v2

    add-float/2addr v5, v14

    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move-object/from16 v25, v6

    iget-object v6, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v6    # "c":[C
    .local v25, "c":[C
    invoke-virtual {v1, v3, v5, v15, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 725
    const/4 v3, 0x1

    aget v3, v4, v3

    add-float/2addr v14, v3

    .line 729
    move/from16 v5, v24

    goto :goto_8

    .end local v24    # "color":I
    .end local v25    # "c":[C
    .restart local v5    # "color":I
    .restart local v6    # "c":[C
    :cond_9
    move-object/from16 v25, v6

    .end local v6    # "c":[C
    .restart local v25    # "c":[C
    :goto_8
    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 730
    iget v3, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 731
    int-to-float v3, v2

    add-float/2addr v3, v14

    iget v6, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    add-float/2addr v3, v6

    iget v6, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    .end local v2    # "offsetX":I
    .end local v4    # "width":[F
    .end local v14    # "hourWidth":F
    .end local v22    # "tf":Landroid/graphics/Typeface;
    :goto_9
    return-void
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 774
    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 776
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 777
    .local v4, "c":[C
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v5

    .line 779
    .local v5, "time":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " "

    goto :goto_0

    :cond_0
    const-string v6, "."

    .line 780
    .local v6, "breakPoint":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 782
    .local v7, "breakIndex":I
    const-string v8, ""

    .line 783
    .local v8, "hour":Ljava/lang/String;
    const-string v9, ""

    .line 784
    .local v9, "min":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v11, v8

    move v8, v10

    .local v8, "i":I
    .local v11, "hour":Ljava/lang/String;
    :goto_1
    if-ge v8, v7, :cond_1

    .line 785
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 784
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 788
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_2

    .line 789
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 788
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 792
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 794
    .local v8, "hourSize":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    .line 795
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 802
    :cond_3
    const/4 v13, 0x0

    .line 804
    .local v13, "hourWidth":F
    new-array v14, v3, [F

    .line 805
    .local v14, "width":[F
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v11, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 806
    aget v13, v14, v10

    .line 808
    const/4 v15, 0x0

    .line 810
    .local v15, "xPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    aget v16, v14, v10

    sub-float v12, v12, v16

    float-to-int v12, v12

    .line 811
    .end local v15    # "xPosition":I
    .local v12, "xPosition":I
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 814
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v15, 0x31

    if-ne v3, v15, :cond_4

    iget v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_3

    :cond_4
    iget v3, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 815
    .local v3, "color":I
    :goto_3
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v4, v10

    .line 817
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move/from16 v17, v3

    aget-char v3, v4, v10

    .end local v3    # "color":I
    .local v17, "color":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v3, v10, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 818
    .end local v5    # "time":Ljava/lang/String;
    .local v18, "time":Ljava/lang/String;
    move v3, v12

    .line 819
    .local v3, "offsetX":I
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 820
    .local v5, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v15, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    iput v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 821
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v10, v4, v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-float v15, v3

    move-object/from16 v19, v2

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .end local v2    # "rect":Landroid/graphics/Rect;
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v5    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v20, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v1, v10, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 823
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    .line 824
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x31

    if-ne v5, v2, :cond_5

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 825
    .end local v17    # "color":I
    .local v2, "color":I
    :goto_4
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-char v10, v4, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v3

    add-float/2addr v10, v13

    iget v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    move/from16 v21, v2

    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    .end local v2    # "color":I
    .local v21, "color":I
    invoke-virtual {v1, v5, v10, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 829
    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 831
    .end local v20    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v5, v10

    iput v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 832
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 833
    iget-object v5, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    const/4 v10, 0x2

    div-int/2addr v5, v10

    int-to-float v5, v5

    iget v10, v0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 850
    return-void
.end method

.method private drawClockDigital(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 750
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    .line 752
    .local v0, "isRTL":Z
    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 753
    .local v2, "c":[C
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 755
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v5, "sans-serif-regular"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 756
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 758
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v5, "sans-serif-thin"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 759
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 760
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v5, "sans-serif-regular"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 764
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 766
    .local v4, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    .line 767
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/2addr v5, v1

    .line 769
    .local v5, "xPos":I
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v6, v5

    iget v7, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontBaseLineY:F

    iget-object v8, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 770
    return-void
.end method

.method private init()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 282
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 283
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 286
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 290
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->reloadDimen()V

    .line 291
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat(Z)V

    .line 295
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorRed:I

    .line 296
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    .line 298
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-regular"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-thin"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 302
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    return-void
.end method

.method private onTimeChanged()V
    .locals 5

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->updateTextStyle()V

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "height":F
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 585
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v3, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v2, v3, :cond_0

    .line 586
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    .end local v0    # "height":F
    .local v2, "height":F
    :goto_0
    goto :goto_1

    .line 588
    .end local v2    # "height":F
    .restart local v0    # "height":F
    :cond_0
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    goto :goto_0

    .line 591
    .end local v0    # "height":F
    .restart local v2    # "height":F
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 592
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/clock/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFontPadding:F

    .line 613
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 4

    .line 873
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "time":Ljava/lang/String;
    const-string v1, "OPTextClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .line 466
    iget-boolean v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 566
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 567
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 568
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/OPTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 573
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 574
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 599
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 600
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 601
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->reloadDimen()V

    .line 602
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v0, v1, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockClassic(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 604
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-ne v0, v1, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockDigital(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 606
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v0, v1, :cond_2

    .line 607
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    .line 609
    :cond_2
    :goto_0
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "clockStyle"    # I

    .line 879
    iput p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    .line 880
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 369
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 371
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 372
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 373
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 427
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 429
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 430
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 431
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 360
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 361
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 362
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 418
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 420
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 441
    iput-boolean p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mShowCurrentUserTime:Z

    .line 443
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->chooseFormat()V

    .line 444
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 445
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    .line 506
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextClock;->onTimeChanged()V

    .line 508
    return-void
.end method

.method public updateTextStyle()V
    .locals 4

    .line 855
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 857
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-regular"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 858
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 859
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-thin"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 860
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 861
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-regular"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 862
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-ne v0, v1, :cond_1

    .line 863
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06008b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 864
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-condensed"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 865
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 866
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v0, v1, :cond_2

    .line 867
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 868
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 870
    :cond_2
    :goto_0
    return-void
.end method
