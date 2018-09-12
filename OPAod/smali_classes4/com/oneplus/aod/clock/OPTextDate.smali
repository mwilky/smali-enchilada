.class public Lcom/oneplus/aod/clock/OPTextDate;
.super Landroid/view/View;
.source "OPTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/OPTextDate$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final FONT_DATE:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_DATE_DEFAULT:Ljava/lang/String; = "sans-serif"

.field private static final FONT_HOUR:Ljava/lang/String; = "sans-serif-regular"

.field private static final FONT_MIN:Ljava/lang/String; = "sans-serif-thin"


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateFontBaseLineY:F

.field private mDatePaint:Landroid/graphics/Paint;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

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

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 125
    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 207
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 208
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 245
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    .line 247
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    .line 248
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 253
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    nop

    .line 258
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    .line 259
    return-void

    .line 255
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

    .line 534
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

.method static synthetic access$000(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextDate;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextDate;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextDate;

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/clock/OPTextDate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextDate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/clock/OPTextDate;

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .line 490
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    .line 491
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .param p1, "handleTicker"    # Z

    .line 511
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 513
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 514
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 515
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 516
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 519
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 521
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    .line 522
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    .line 524
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    .line 525
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 528
    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    .line 287
    :goto_0
    return-void
.end method

.method private drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 596
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    .line 597
    .local v0, "isRTL":Z
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v1

    .line 598
    .local v1, "w":I
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 600
    .local v2, "xPos":I
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 601
    .local v3, "isDefaultClock":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_1

    const v7, 0x7f0600aa

    goto :goto_1

    :cond_1
    const v7, 0x7f0600ae

    :goto_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 602
    .local v4, "textSize":F
    if-eqz v3, :cond_2

    const-string v7, "sans-serif"

    goto :goto_2

    :cond_2
    const-string v7, "sans-serif-regular"

    .line 603
    .local v7, "font":Ljava/lang/String;
    :goto_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 605
    .local v8, "rect":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 606
    .local v5, "tf":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 607
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 608
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v10, "0.15"

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 609
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0500d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, p1, v6, v10, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 612
    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v6, v9, :cond_5

    .line 614
    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 615
    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v1, v6

    iget v9, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v9

    :goto_4
    int-to-float v6, v6

    goto :goto_5

    :cond_4
    iget v6, v8, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    goto :goto_4

    :goto_5
    iget v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 616
    :cond_5
    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v6, v9, :cond_7

    .line 618
    :cond_6
    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 619
    int-to-float v6, v2

    iget v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    :cond_7
    :goto_6
    return-void
.end method

.method private drawTextDefault(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 625
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    .line 626
    .local v2, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v3

    .line 627
    .local v3, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 630
    .local v4, "xPos":I
    iget v5, v0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v6, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    .line 631
    .local v5, "isDefaultClock":Z
    :goto_0
    iget-object v6, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_1

    const v9, 0x7f0600aa

    goto :goto_1

    :cond_1
    const v9, 0x7f0600ae

    :goto_1
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 632
    .local v6, "textSize":F
    if-eqz v5, :cond_2

    const-string v9, "sans-serif"

    goto :goto_2

    :cond_2
    const-string v9, "sans-serif-regular"

    .line 633
    .local v9, "font":Ljava/lang/String;
    :goto_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .local v10, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    move v7, v8

    nop

    :cond_3
    invoke-static {v9, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 636
    .local v7, "tf":Landroid/graphics/Typeface;
    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 637
    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 638
    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v11, "0.15"

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 639
    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0500d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 642
    .local v8, "locale":Ljava/util/Locale;
    const/4 v11, 0x0

    .line 643
    .local v11, "switchPosition":Z
    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "zh_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 644
    const/4 v11, 0x1

    .line 647
    :cond_4
    const-string v12, "MMMMd"

    invoke-static {v8, v12}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 648
    .local v12, "month_day_format":Ljava/lang/CharSequence;
    const-string v13, "EEEE"

    invoke-static {v8, v13}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 649
    .local v13, "week_format":Ljava/lang/CharSequence;
    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v12, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 650
    .local v14, "monthDay":Ljava/lang/String;
    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v13, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 654
    .local v15, "week":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 655
    move-object/from16 v16, v14

    .line 656
    .local v16, "position_fist":Ljava/lang/String;
    move-object/from16 v17, v15

    .line 659
    .local v17, "position_second":Ljava/lang/String;
    move/from16 v18, v2

    .end local v16    # "position_fist":Ljava/lang/String;
    .local v2, "position_fist":Ljava/lang/String;
    .local v18, "isRTL":Z
    :goto_3
    move-object/from16 v2, v16

    goto :goto_4

    .line 658
    .end local v17    # "position_second":Ljava/lang/String;
    .end local v18    # "isRTL":Z
    .local v2, "isRTL":Z
    :cond_5
    move-object/from16 v16, v15

    .line 659
    .restart local v16    # "position_fist":Ljava/lang/String;
    move/from16 v18, v2

    move-object/from16 v17, v14

    goto :goto_3

    .end local v16    # "position_fist":Ljava/lang/String;
    .local v2, "position_fist":Ljava/lang/String;
    .restart local v17    # "position_second":Ljava/lang/String;
    .restart local v18    # "isRTL":Z
    :goto_4
    move-object/from16 v19, v17

    .line 662
    .end local v17    # "position_second":Ljava/lang/String;
    .local v19, "position_second":Ljava/lang/String;
    move/from16 v20, v3

    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .end local v3    # "w":I
    .local v20, "w":I
    move/from16 v21, v5

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .end local v5    # "isDefaultClock":Z
    .local v21, "isDefaultClock":Z
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 663
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 664
    int-to-float v3, v4

    iget v5, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    move/from16 v22, v6

    iget-object v6, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    .end local v6    # "textSize":F
    .local v22, "textSize":F
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 668
    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 670
    .local v3, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v5, v19

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 671
    .end local v19    # "position_second":Ljava/lang/String;
    .local v5, "position_second":Ljava/lang/String;
    int-to-float v6, v4

    move-object/from16 v23, v2

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    .end local v2    # "position_fist":Ljava/lang/String;
    .local v23, "position_fist":Ljava/lang/String;
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v2, v2, v16

    move/from16 v24, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .end local v4    # "xPos":I
    .local v24, "xPos":I
    mul-float v4, v4, v16

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 672
    return-void
.end method

.method private init()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 264
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 265
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 268
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 272
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    .line 273
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    .line 277
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 278
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 279
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .line 550
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->invalidate()V

    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "height":F
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 556
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    add-float/2addr v2, v3

    .line 557
    .end local v0    # "height":F
    .local v2, "height":F
    const/4 v0, 0x0

    .line 558
    .local v0, "topMargin":I
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v3, v4, :cond_0

    .line 559
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v2, v3, v4

    .line 560
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 561
    :cond_0
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v3, v4, :cond_1

    .line 562
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 564
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 565
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v4, v2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 566
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 567
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/clock/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/clock/OPTextDate;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 569
    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    .line 592
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .line 439
    iget-boolean v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 539
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 540
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 541
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 546
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 547
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 573
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 574
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    .line 578
    iget v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-eq v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 580
    .local v0, "date":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "text":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 582
    .end local v0    # "date":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 583
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawTextDefault(Landroid/graphics/Canvas;)V

    .line 586
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 587
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 588
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 675
    iput p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    .line 676
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 342
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    .line 344
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 345
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 346
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 400
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    .line 402
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 403
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 404
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 333
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 334
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 335
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 391
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 392
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 393
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 414
    iput-boolean p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    .line 416
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    .line 417
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 418
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    .line 479
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    .line 481
    return-void
.end method
