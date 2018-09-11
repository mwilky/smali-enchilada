.class Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;
.super Ljava/lang/Object;
.source "RegionZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Landroid/icu/text/Collator;

.field private final mNow:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/icu/text/Collator;Ljava/util/Date;)V
    .locals 0
    .param p1, "collator"    # Landroid/icu/text/Collator;
    .param p2, "now"    # Ljava/util/Date;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    .line 141
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    .line 142
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/datetime/timezone/TimeZoneInfo;Lcom/android/settings/datetime/timezone/TimeZoneInfo;)I
    .locals 4
    .param p1, "tzi1"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .param p2, "tzi2"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 147
    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 148
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 150
    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    check-cast p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->compare(Lcom/android/settings/datetime/timezone/TimeZoneInfo;Lcom/android/settings/datetime/timezone/TimeZoneInfo;)I

    move-result p1

    return p1
.end method
