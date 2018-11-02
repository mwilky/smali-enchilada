.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UsbDetailsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsController;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field private mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsFragment$0qs6NXPaSCNUBBPVeTrwViGe6pk;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsFragment$0qs6NXPaSCNUBBPVeTrwViGe6pk;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/connecteddevice/usb/UsbBackend;",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;ZJII)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

    move-object v2, v1

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->refresh(ZJII)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-static {p1, v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x50b

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600d3

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
