.class public Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;
.super Ljava/lang/Object;
.source "BluetoothSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 6

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/16 v6, 0x366

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method

.method private setBluetoothDiscoverableState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x56e

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->setBluetoothDiscoverableState()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method updateText(Z)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->isBluetoothScanningEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "link"

    invoke-direct {v0, v1, p0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120337

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f1202ca

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    :goto_0
    return-void
.end method
