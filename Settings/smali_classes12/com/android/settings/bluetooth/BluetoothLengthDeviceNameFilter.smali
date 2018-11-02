.class public Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;
.super Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.source "BluetoothLengthDeviceNameFilter.java"


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0xf8


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf8

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    return-void
.end method
