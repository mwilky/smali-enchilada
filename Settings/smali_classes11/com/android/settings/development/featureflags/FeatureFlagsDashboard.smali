.class public Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FeatureFlagsDashboard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureFlagsDashboard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;

    invoke-direct {v3, p1, v1}, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "FeatureFlagsDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160057

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixin;)V

    return-void
.end method
