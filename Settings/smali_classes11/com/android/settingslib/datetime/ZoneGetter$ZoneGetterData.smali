.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/datetime/ZoneGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoneGetterData"
.end annotation


# instance fields
.field public final gmtOffsetTexts:[Ljava/lang/CharSequence;

.field public final localZoneIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final olsonIdsToDisplay:[Ljava/lang/String;

.field public final timeZones:[Ljava/util/TimeZone;

.field public final zoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/datetime/ZoneGetter;->access$000(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    iget v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    new-array v4, v4, [Ljava/util/TimeZone;

    iput-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    iget v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v4, v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aput-object v5, v6, v4

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aput-object v6, v7, v4

    iget-object v7, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    invoke-static {v1, v0, v6, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
