.class public Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RecentLocationRequestSeeAllFragment.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "com.android.settings.location.RecentLocationRequestSeeAllFragment"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "RecentLocationReqAll"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;

    invoke-direct {v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentLocationReqAll"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x52d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160061

    return v0
.end method
