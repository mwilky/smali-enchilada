.class public Lcom/android/settings/datetime/timezone/TimeZoneInfo;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;,
        Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
    }
.end annotation


# instance fields
.field private final mDaylightName:Ljava/lang/String;

.field private final mExemplarLocation:Ljava/lang/String;

.field private final mGenericName:Ljava/lang/String;

.field private final mGmtOffset:Ljava/lang/CharSequence;

.field private final mId:Ljava/lang/String;

.field private final mStandardName:Ljava/lang/String;

.field private final mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$000(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Landroid/icu/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$100(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$200(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$300(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$400(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->access$500(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getDaylightName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    return-object v0
.end method

.method public getExemplarLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtOffset()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    return-object v0
.end method
