.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# direct methods
.method public static getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    const/16 v3, 0x200

    if-eq v2, v3, :cond_2

    const/16 v3, 0x500

    if-eq v2, v3, :cond_1

    const/16 v3, 0x600

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_settings_print:I

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v3

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_3
    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    invoke-static {p0, v3, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v5

    if-eqz v5, :cond_5

    new-instance v3, Landroid/util/Pair;

    invoke-static {p0, v5, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_8
    new-instance v3, Landroid/util/Pair;

    sget v4, Lcom/android/settingslib/R$drawable;->ic_settings_bluetooth:I

    invoke-static {p0, v4, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0

    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
