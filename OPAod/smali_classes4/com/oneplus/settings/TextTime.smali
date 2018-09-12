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

    .line 43
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "TextTime"

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/oneplus/settings/TextTime$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/TextTime$1;-><init>(Lcom/oneplus/settings/TextTime;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "TextTime"

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/oneplus/settings/TextTime$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/TextTime$1;-><init>(Lcom/oneplus/settings/TextTime;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/oneplus/settings/TextTime;->mTag:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/TextTime;->setFormat(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/TextTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/TextTime;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/TextTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/TextTime;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    return-void
.end method

.method private chooseFormat()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 130
    .local v0, "format24Requested":Z
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    goto :goto_2

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneplus/settings/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    :goto_1
    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    .line 135
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mContentDescriptionFormat:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static get12ModeFormat(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amPmFontSize"    # I

    .line 226
    invoke-static {}, Lcom/oneplus/settings/TextTime;->isJBMR2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hma"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_0
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "pattern":Ljava/lang/String;
    :goto_0
    const-string v1, " "

    const-string v2, "\u200a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 240
    .local v1, "amPmPos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 241
    return-object v0

    .line 243
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .local v2, "sp":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x21

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 250
    new-instance v3, Landroid/text/style/TypefaceSpan;

    const-string v4, "sans-serif"

    invoke-direct {v3, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 252
    return-object v2
.end method

.method public static get24ModeFormat()Ljava/lang/CharSequence;
    .locals 3

    .line 256
    invoke-static {}, Lcom/oneplus/settings/TextTime;->isJBMR2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "k:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0
.end method

.method public static isJBMR2OrLater()Z
    .locals 2

    .line 265
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
    .param p1, "timeString"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 180
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    .line 181
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/TextTime;->mMinute:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "date":Ljava/util/Date;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 185
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_0
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 198
    iget v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/TextTime;->mTimeString:Ljava/lang/CharSequence;

    .line 207
    return-void
.end method


# virtual methods
.method public comapreTo(Lcom/oneplus/settings/TextTime;)I
    .locals 3
    .param p1, "time"    # Lcom/oneplus/settings/TextTime;

    .line 270
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

    .line 271
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 272
    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EQUAL_TO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 276
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

    .line 277
    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EARLIER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    return v2

    .line 279
    :cond_4
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    invoke-virtual {p1}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 280
    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "TextTime"

    const-string v1, "COMPARE_EARLIER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_5
    return v2

    .line 284
    :cond_6
    sget-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    const-string v0, "TextTime"

    const-string v1, "COMPARE_LATER_THAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    return v0
.end method

.method public setFormat(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "amPmFontSize"    # I

    .line 149
    invoke-static {p1, p2}, Lcom/oneplus/settings/TextTime;->get12ModeFormat(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/TextTime;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {}, Lcom/oneplus/settings/TextTime;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/TextTime;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 109
    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mFormat12:Ljava/lang/CharSequence;

    .line 111
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    .line 112
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    .line 113
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 122
    iput-object p1, p0, Lcom/oneplus/settings/TextTime;->mFormat24:Ljava/lang/CharSequence;

    .line 124
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    .line 126
    return-void
.end method

.method public setTime(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 154
    iput p1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    .line 155
    iput p2, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    .line 156
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    .line 157
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    .line 158
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .line 161
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/TextTime;->parseTime(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mTag:Ljava/lang/String;

    const-string v1, "display_from"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 163
    const/16 v0, 0x8

    iput v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    .line 164
    iput v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    goto :goto_1

    .line 166
    :cond_2
    const/16 v0, 0x16

    iput v0, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    .line 167
    iput v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->chooseFormat()V

    .line 173
    invoke-direct {p0}, Lcom/oneplus/settings/TextTime;->updateTime()V

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/TextTime;->mTimeString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringIn24()Ljava/lang/String;
    .locals 3

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/oneplus/settings/TextTime;->mHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 212
    iget v1, p0, Lcom/oneplus/settings/TextTime;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 213
    invoke-static {}, Lcom/oneplus/settings/TextTime;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
