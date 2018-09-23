.class public Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioQualityPreferenceController.java"


# static fields
.field private static final BLUETOOTH_SELECT_A2DP_LDAC_PLAYBACK_QUALITY_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_ldac_playback_quality"

.field private static final DEFAULT_INDEX:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    rem-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    nop

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_select_a2dp_ldac_playback_quality"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x3e8

    add-int v1, v2, v0

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v2, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecSpecific1Value(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
