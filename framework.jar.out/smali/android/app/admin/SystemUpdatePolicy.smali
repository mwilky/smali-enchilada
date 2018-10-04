.class public final Landroid/app/admin/SystemUpdatePolicy;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$InstallationOption;,
        Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;,
        Landroid/app/admin/SystemUpdatePolicy$SystemUpdatePolicyType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdatePolicy;",
            ">;"
        }
    .end annotation
.end field

.field static final FREEZE_PERIOD_MAX_LENGTH:I = 0x5a

.field static final FREEZE_PERIOD_MIN_SEPARATION:I = 0x3c

.field private static final KEY_FREEZE_END:Ljava/lang/String; = "end"

.field private static final KEY_FREEZE_START:Ljava/lang/String; = "start"

.field private static final KEY_FREEZE_TAG:Ljava/lang/String; = "freeze"

.field private static final KEY_INSTALL_WINDOW_END:Ljava/lang/String; = "install_window_end"

.field private static final KEY_INSTALL_WINDOW_START:Ljava/lang/String; = "install_window_start"

.field private static final KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field private static final TAG:Ljava/lang/String; = "SystemUpdatePolicy"

.field public static final TYPE_INSTALL_AUTOMATIC:I = 0x1

.field public static final TYPE_INSTALL_WINDOWED:I = 0x2

.field public static final TYPE_PAUSE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_POSTPONE:I = 0x3

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final WINDOW_BOUNDARY:I = 0x5a0


# instance fields
.field private final mFreezePeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceWindowEnd:I

.field private mMaintenanceWindowStart:I

.field private mPolicyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/SystemUpdatePolicy$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return p1
.end method

.method static synthetic access$302(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    return p1
.end method

.method static synthetic access$402(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return p1
.end method

.method static synthetic access$500(Landroid/app/admin/SystemUpdatePolicy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-object v0
.end method

.method public static createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-object v0
.end method

.method public static createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x5a0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    iput p0, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    iput p1, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime and endTime must be inside [0, 1440)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dateToMillis(Ljava/time/LocalDate;)J
    .locals 2

    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method private getInstallationOptionRegardlessFreezeAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    .locals 13

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v10, v4, v2

    if-gtz v10, :cond_1

    cmp-long v10, v2, v6

    if-lez v10, :cond_2

    :cond_1
    cmp-long v10, v4, v6

    if-lez v10, :cond_3

    cmp-long v10, v4, v2

    if-lez v10, :cond_2

    cmp-long v10, v2, v6

    if-gtz v10, :cond_3

    :cond_2
    new-instance v10, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    sub-long v11, v6, v2

    add-long/2addr v11, v8

    rem-long/2addr v11, v8

    invoke-direct {v10, v1, v11, v12}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v10

    :cond_3
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    const/4 v10, 0x4

    sub-long v11, v4, v2

    add-long/2addr v11, v8

    rem-long/2addr v11, v8

    invoke-direct {v1, v10, v11, v12}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown policy type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v0
.end method

.method static synthetic lambda$toString$0(Landroid/app/admin/FreezePeriod;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static millisToDate(J)Ljava/time/LocalDate;
    .locals 2

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    const-string/jumbo v2, "policy_type"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const-string v3, "install_window_start"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    :cond_0
    const-string v3, "install_window_end"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    :cond_3
    if-eq v5, v4, :cond_2

    const/4 v4, 0x4

    if-ne v5, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "freeze"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, v1, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/admin/FreezePeriod;

    const-string/jumbo v7, "start"

    invoke-interface {p0, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object v7

    const-string v8, "end"

    invoke-interface {p0, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/app/admin/FreezePeriod;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SystemUpdatePolicy"

    const-string v3, "Load xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private static roundUpLeapDay(Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 2

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method private timeUntilNextFreezePeriod(J)J
    .locals 6

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->millisToDate(J)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->after(Ljava/time/LocalDate;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/time/LocalDate;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Given date is inside a freeze period"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v3, v1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/time/LocalDate;

    :cond_3
    invoke-static {v2}, Landroid/app/admin/SystemUpdatePolicy;->dateToMillis(Ljava/time/LocalDate;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    return-wide v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFreezePeriod(Ljava/time/LocalDate;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v1, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreezePeriods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallWindowEnd()I
    .locals 2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInstallWindowStart()I
    .locals 2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getInstallationOptionAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->millisToDate(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/admin/SystemUpdatePolicy;->getCurrentFreezePeriod(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    const/4 v3, 0x4

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/LocalDate;

    invoke-static {v4}, Landroid/app/admin/SystemUpdatePolicy;->roundUpLeapDay(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-static {v4}, Landroid/app/admin/SystemUpdatePolicy;->dateToMillis(Ljava/time/LocalDate;)J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-direct {v2, v3, v4, v5}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v2

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->getInstallationOptionRegardlessFreezeAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->timeUntilNextFreezePeriod(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->limitEffectiveTime(J)V

    :cond_1
    return-object v2
.end method

.method public getPolicyType()I
    .locals 1

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdatePolicy;->validateType()V

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdatePolicy;->validateFreezePeriods()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "policy_type"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "install_window_start"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "install_window_end"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    const-string v3, "freeze"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "start"

    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "end"

    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "freeze"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFreezePeriods(Ljava/util/List;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Landroid/app/admin/SystemUpdatePolicy;"
        }
    .end annotation

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->validatePeriods(Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SystemUpdatePolicy (type: %d, windowStart: %d, windowEnd: %d, freezes: [%s])"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/app/admin/-$$Lambda$SystemUpdatePolicy$cfrSWvZcAu30PIPvKA2LGQbmTew;->INSTANCE:Landroid/app/admin/-$$Lambda$SystemUpdatePolicy$cfrSWvZcAu30PIPvKA2LGQbmTew;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateAgainstPreviousFreezePeriod(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3}, Landroid/app/admin/FreezePeriod;->validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method

.method public validateFreezePeriods()V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/admin/FreezePeriod;->validatePeriods(Ljava/util/List;)V

    return-void
.end method

.method public validateType()V
    .locals 2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    const/16 v1, 0x5a0

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maintenance window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid system update policy type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
