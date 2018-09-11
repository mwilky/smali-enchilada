.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "NetworkDashboardFrag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 244
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x2"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "x3"    # Landroid/app/Fragment;
    .param p4, "x4"    # Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .param p3, "fragment"    # Landroid/app/Fragment;
    .param p4, "mobilePlanHost"    # Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    .line 94
    .local v0, "mobilePlanPreferenceController":Lcom/android/settings/network/MobilePlanPreferenceController;
    new-instance v1, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 105
    .local v1, "wifiPreferenceController":Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;
    new-instance v2, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, "vpnPreferenceController":Lcom/android/settings/network/VpnPreferenceController;
    new-instance v3, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, "privateDnsPreferenceController":Lcom/android/settings/network/PrivateDnsPreferenceController;
    new-instance v4, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;-><init>(Landroid/content/Context;)V

    .line 110
    .local v4, "mOPWiFiCallingPreferenceController":Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;
    new-instance v5, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "mOPRoamingControlPreferenceController":Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 114
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 121
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 122
    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 123
    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 124
    invoke-virtual {p1, v5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 127
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v7, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v7, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {v7, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v6
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "controller"    # Lcom/android/settings/network/MobilePlanPreferenceController;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 169
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 170
    const/16 v0, 0x261

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 79
    const v0, 0x7f120720

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "NetworkDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x2ea

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 67
    const v0, 0x7f160068

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 74
    const-class v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroid/app/Fragment;)V

    .line 75
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 152
    const-string v0, "NetworkDashboardFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    const-class v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 157
    .local v0, "controller":Lcom/android/settings/network/MobilePlanPreferenceController;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;

    invoke-direct {v3, v0}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    return-object v1
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->showDialog(I)V

    .line 148
    return-void
.end method
