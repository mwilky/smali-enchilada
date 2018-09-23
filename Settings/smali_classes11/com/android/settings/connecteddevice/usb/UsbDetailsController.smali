.class public abstract Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UsbDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final DATAROLE_OPEN:Z = false


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

.field mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract refresh(ZJII)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method
