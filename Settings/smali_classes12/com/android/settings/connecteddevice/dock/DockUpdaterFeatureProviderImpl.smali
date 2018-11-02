.class public Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DockUpdaterFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/overlay/DockUpdaterFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$1;-><init>(Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;)V

    return-object v0
.end method

.method public getSavedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$2;-><init>(Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;)V

    return-object v0
.end method
