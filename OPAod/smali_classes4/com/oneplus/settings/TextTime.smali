.class public Lcom/oneplus/settings/TextTime;
.super Ljava/lang/Object;
.source "TextTime.java"


# static fields
.field public static final COMPARE_EARLIER_THAN:I = 0x1

.field public static final COMPARE_EQUAL_TO:I = 0x0

.field public static final COMPARE_LATER_THAN:I = 0x2

.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field public static final TAG_FROM:Ljava/lang/String; = "display_from"

.field public static final TAG_TO:Ljava/lang/String; = "display_to"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContentDescriptionFormat:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/CharSequence;

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHour:I

.field private mMinute:I

.field private mTag:Ljava/lang/String;

.field private mTimeString:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TextTime"

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/TextTime$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/TextTime$1;-><init>(Lcom/oneplus/settings/TextTime;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TextTime"

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/TextTime$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/TextTime$1;-><init>(Lcom/oneplus/settings/TextTime;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/TextTime;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/TextTime;->setFormat(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/TextTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/TextTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method private chooseFormat()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    :goto_1
    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mContentDescriptionFormat:Ljava/lang/String;

    return-void
.end method

.method public static get12ModeFormat(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6

    invoke-static {}, Lcom/oneplus/settings/TextTime;->isJBMR2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hma"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " "

    const-string v2, "\u200a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x21

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/TypefaceSpan;

    const-string v4, "sans-serif"

    invoke-direct {v3, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static get24ModeFormat()Ljava/lang/CharSequence;
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/TextTime;->isJBMR2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "k:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static isJBMR2OrLater()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseTime(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/TextTime;->mMinute:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerObserver()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mTimeString:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public comapreTo(Lcom/oneplus/settings/TextTime;)I
    .locals 3

    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "TextTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EQUAL_TO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EARLIER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v1

    if-ge v0, v1, :cond_6

    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EARLIER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    const-string v0, "TextTime"

    const-string v1, "COMPARE_LATER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    return v0
.end method

.method public setFormat(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/oneplus/settings/TextTime;->get12ModeFormat(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/TextTime;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/oneplus/settings/TextTime;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/TextTime;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method public setTime(II)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    iput p2, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/TextTime;->parseTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mTag:Ljava/lang/String;

    const-string v1, "display_from"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    iput v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    iput v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x16

    iput v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    iput v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mTimeString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringIn24()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lcom/oneplus/settings/TextTime;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
