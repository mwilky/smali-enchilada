.class public Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "RegionSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;,
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_ZONE_PICKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RegionSearchPicker"


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f120503

    const v2, 0x7f120501

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    return-void
.end method

.method private createAdapterItem(Ljava/util/Set;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;

    invoke-direct {v2, v0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;-><init>(Landroid/icu/text/Collator;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    const-wide/16 v9, 0x1

    add-long/2addr v9, v3

    invoke-direct {v8, v3, v4, v6, v7}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    nop

    move-wide v3, v9

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method public static synthetic lambda$DOJaHroZb7JziN-vdZ6PwdoM4gg(Lcom/android/settings/datetime/timezone/RegionSearchPicker;Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->onListItemClick(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V

    return-void
.end method

.method private onListItemClick(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {v1, v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v7, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    invoke-virtual {v5, p0, v6}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v4, "RegionSearchPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Region has no time zones: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getRegionIds()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->createAdapterItem(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$RegionSearchPicker$DOJaHroZb7JziN-vdZ6PwdoM4gg;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$RegionSearchPicker$DOJaHroZb7JziN-vdZ6PwdoM4gg;-><init>(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;-><init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
