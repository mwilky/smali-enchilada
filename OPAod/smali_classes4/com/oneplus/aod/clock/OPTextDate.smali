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

    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/clock/OPTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/clock/OPTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$1;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/aod/clock/OPTextDate$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/clock/OPTextDate$2;-><init>(Lcom/oneplus/aod/clock/OPTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->init()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

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

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/clock/OPTextDate;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/clock/OPTextDate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/clock/OPTextDate;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/clock/OPTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_1

    const v7, 0x7f0600a8

    goto :goto_1

    :cond_1
    const v7, 0x7f0600ac

    :goto_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    if-eqz v3, :cond_2

    const-string v7, "sans-serif"

    goto :goto_2

    :cond_2
    const-string v7, "sans-serif-regular"

    :goto_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v10, "0.15"

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0500d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, p1, v6, v10, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v6, v9, :cond_5

    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

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

    :cond_5
    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v9, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v6, v9, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v6, v2

    iget v9, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_6
    return-void
.end method

.method private drawTextDefault(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/clock/OPTextDate;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v6, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object v6, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_1

    const v9, 0x7f0600a8

    goto :goto_1

    :cond_1
    const v9, 0x7f0600ac

    :goto_1
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    if-eqz v5, :cond_2

    const-string v9, "sans-serif"

    goto :goto_2

    :cond_2
    const-string v9, "sans-serif-regular"

    :goto_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    if-eqz v5, :cond_3

    move v7, v8

    nop

    :cond_3
    invoke-static {v9, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v11, "0.15"

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object v8, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0500d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "zh_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x1

    :cond_4
    const-string v12, "MMMMd"

    invoke-static {v8, v12}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "EEEE"

    invoke-static {v8, v13}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v12, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v13, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_5

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move/from16 v18, v2

    :goto_3
    move-object/from16 v2, v16

    goto :goto_4

    :cond_5
    move-object/from16 v16, v15

    move/from16 v18, v2

    move-object/from16 v17, v14

    goto :goto_3

    :goto_4
    move-object/from16 v19, v17

    move/from16 v20, v3

    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    move/from16 v21, v5

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v4

    iget v5, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    move/from16 v22, v6

    iget-object v6, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    move-object/from16 v5, v19

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v4

    move-object/from16 v23, v2

    iget v2, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v2, v2, v16

    move/from16 v24, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    mul-float v4, v4, v16

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

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

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->invalidate()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    add-float/2addr v2, v3

    const/4 v0, 0x0

    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-ne v3, v4, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/clock/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/clock/OPTextDate;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private reloadDimen()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDateFontBaseLineY:F

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->reloadDimen()V

    iget v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawText(Ljava/lang/String;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->drawTextDefault(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mClockStyle:I

    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/clock/OPTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/clock/OPTextDate;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPTextDate;->onTimeChanged()V

    return-void
.end method
