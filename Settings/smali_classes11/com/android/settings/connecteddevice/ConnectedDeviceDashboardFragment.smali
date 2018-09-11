.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "available_device_list"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "connected_device_list"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "ConnectedDeviceFrag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 171
    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 71
    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "discoverableFooterPreferenceController":Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 113
    .local v2, "mOPBluetoothDiscoverablePreferenceController":Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v3, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, "mOPPreferenceDividerLine":Lcom/oneplus/settings/utils/OPPreferenceDividerLine;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 118
    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 121
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 92
    const v0, 0x7f120710

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "ConnectedDeviceFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 82
    const/16 v0, 0x2eb

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 97
    const v0, 0x7f160030

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 127
    const-class v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 128
    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 131
    const-class v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 132
    const-class v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 133
    return-void
.end method
