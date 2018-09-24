.class public Lcom/android/keyguard/clock/OPTextClock;
.super Landroid/widget/TextView;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

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

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Lcom/android/keyguard/clock/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/android/keyguard/clock/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$1;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$2;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$3;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/clock/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$1;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$2;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/OPTextClock$3;-><init>(Lcom/android/keyguard/clock/OPTextClock;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->init()V

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

.method static synthetic access$000(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/clock/OPTextClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/clock/OPTextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/clock/OPTextClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

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

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat(Z)V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private registerObserver()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/OPTextClock$FormatChangeObserver;-><init>(Lcom/android/keyguard/clock/OPTextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "format12Hour"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "format24Hour"

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    iget-object v3, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerObserver()V

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OPTextClock;->createTime(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mHasSeconds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterObserver()V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/clock/OPTextClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/clock/OPTextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->onTimeChanged()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->unregisterObserver()V

    invoke-direct {p0}, Lcom/android/keyguard/clock/OPTextClock;->registerObserver()V

    return-void
.end method
