.class public Lcom/android/settings/system/SystemDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SystemDashboardFragment.java"


# static fields
.field private static final KEY_OP_RECEIVE_NOTIFICATIONS:Ljava/lang/String; = "onepus_receive_notifications"

.field private static final KEY_RESET:Ljava/lang/String; = "reset_dashboard"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SystemDashboardFrag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/settings/system/SystemDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/SystemDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "visibleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 95
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 96
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 93
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_2
    return v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/system/OPOTGPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/system/OPOTGPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 88
    const v0, 0x7f12072b

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "SystemDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 73
    const/16 v0, 0x2e8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 83
    const v0, 0x7f1600c4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 56
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 58
    :cond_0
    return-void
.end method
