.class public Lcom/oneplus/aod/clock/ClockViewCtrl;
.super Ljava/lang/Object;
.source "ClockViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;
    }
.end annotation


# static fields
.field public static CLOCK_ANALOG:I

.field public static CLOCK_CLASSIC:I

.field public static CLOCK_DEFAULT:I

.field public static CLOCK_DIGITAL:I

.field private static mDisplayText:Ljava/lang/String;


# instance fields
.field private KEY_CLOCK_STYLE:Ljava/lang/String;

.field private KEY_DISPLAY_TEXT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAnalogClockView:Lcom/oneplus/aod/clock/OPAnalogClock;

.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mClockStyle:I

.field private mClockView:Lcom/oneplus/aod/clock/OPTextClock;

.field private final mContext:Landroid/content/Context;

.field private mDateTimeView:Lcom/oneplus/aod/clock/DateTimeView;

.field private mDateView:Lcom/oneplus/aod/clock/OPTextDate;

.field private final mSettingObserver:Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DEFAULT:I

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    const/4 v0, 0x3

    sput v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ClockViewCtrl"

    iput-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->TAG:Ljava/lang/String;

    const-string v0, "aod_clock_style"

    iput-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    const-string v0, "aod_display_text"

    iput-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    new-instance v1, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;-><init>(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mSettingObserver:Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;

    new-instance v1, Lcom/oneplus/aod/clock/ClockViewCtrl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/clock/ClockViewCtrl$1;-><init>(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    iput-object p1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    const v1, 0x7f090062

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/clock/DateTimeView;

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/clock/DateTimeView;

    const v1, 0x7f090050

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/clock/OPTextClock;

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    const v1, 0x7f090063

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/clock/OPTextDate;

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    const v1, 0x7f090029

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/clock/OPAnalogClock;

    iput-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/clock/OPAnalogClock;

    iput-object p3, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mSettingObserver:Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mSettingObserver:Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->updateClockDB()V

    invoke-direct {p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->updateDisplayTextDB()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/clock/ClockViewCtrl;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/clock/ClockViewCtrl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/clock/ClockViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->updateClockDB()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/clock/ClockViewCtrl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/clock/ClockViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->updateDisplayTextDB()V

    return-void
.end method

.method static synthetic access$502(Lcom/oneplus/aod/clock/ClockViewCtrl;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    return p1
.end method

.method public static getDisplayText()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method private updateClockDB()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/clock/DateTimeView;

    iget v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-static {v0, v3, v1}, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock: style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDisplayTextDB()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock: updateDisplayTextDB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getClockStyle()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    return v0
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/clock/OPAnalogClock;

    invoke-virtual {v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->refreshTime()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/clock/OPTextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public updateClockVisibility()V
    .locals 4

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClockVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_ANALOG:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/clock/OPAnalogClock;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/clock/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/clock/OPTextClock;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/clock/OPAnalogClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/clock/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/clock/OPTextClock;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/clock/OPTextClock;

    iget v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/OPTextClock;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/clock/OPTextDate;

    iget v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/OPTextDate;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/clock/DateTimeView;

    iget v1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/clock/DateTimeView;->setClockStyle(I)V

    return-void
.end method
