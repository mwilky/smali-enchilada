.class public Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/TimeZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDaylightName:Ljava/lang/String;

.field private mExemplarLocation:Ljava/lang/String;

.field private mGenericName:Ljava/lang/String;

.field private mGmtOffset:Ljava/lang/CharSequence;

.field private mStandardName:Ljava/lang/String;

.field private final mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mTimeZone:Landroid/icu/util/TimeZone;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeZone must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mTimeZone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGenericName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mStandardName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mDaylightName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mExemplarLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGmtOffset:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGmtOffset:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gmtOffset must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDaylightName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mDaylightName:Ljava/lang/String;

    return-object p0
.end method

.method public setExemplarLocation(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mExemplarLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setGenericName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGenericName:Ljava/lang/String;

    return-object p0
.end method

.method public setGmtOffset(Ljava/lang/CharSequence;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGmtOffset:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setStandardName(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mStandardName:Ljava/lang/String;

    return-object p0
.end method
