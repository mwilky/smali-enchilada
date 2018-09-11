.class public Lcom/oneplus/settings/others/OPExperienceImprovementFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPExperienceImprovementFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPExperienceImprovementFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
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

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, "mOPOpReceiveNotificationsSwitchPreferenceController":Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;
    new-instance v2, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;

    invoke-direct {v2, p1}, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "mOPUserExperienceSwitchPreferenceController":Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;
    new-instance v3, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;

    invoke-direct {v3, p1}, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    .local v3, "mOPSystemStabilitySwitchPreferenceController":Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;
    new-instance v4, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v4, p1}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "OPExperienceImprovementFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 36
    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 25
    const v0, 0x7f16007b

    return v0
.end method
