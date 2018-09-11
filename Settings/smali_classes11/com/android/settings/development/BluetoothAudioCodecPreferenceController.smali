.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# static fields
.field private static final BLUETOOTH_SELECT_A2DP_CODEC_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_codec"

.field private static final DEFAULT_INDEX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "store"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    .line 133
    .local v0, "codecType":I
    const/4 v1, 0x0

    .line 134
    .local v1, "index":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    const/4 v1, 0x5

    .line 149
    goto :goto_0

    .line 145
    :pswitch_1
    const/4 v1, 0x4

    .line 146
    goto :goto_0

    .line 142
    :pswitch_2
    const/4 v1, 0x3

    .line 143
    goto :goto_0

    .line 139
    :pswitch_3
    const/4 v1, 0x2

    .line 140
    goto :goto_0

    .line 136
    :pswitch_4
    const/4 v1, 0x1

    .line 137
    nop

    .line 154
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "bluetooth_select_a2dp_codec"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "index":I
    const/4 v1, 0x0

    .line 62
    .local v1, "codecTypeValue":I
    const/4 v2, 0x0

    .line 63
    .local v2, "codecPriorityValue":I
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 121
    :cond_0
    monitor-exit v4

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 110
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v4

    .line 111
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 114
    :cond_1
    monitor-exit v4

    .line 115
    return-void

    .line 114
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 106
    :pswitch_2
    const/4 v1, 0x4

    .line 107
    const v2, 0xf4240

    .line 108
    goto :goto_0

    .line 102
    :pswitch_3
    const/4 v1, 0x3

    .line 103
    const v2, 0xf4240

    .line 104
    goto :goto_0

    .line 98
    :pswitch_4
    const/4 v1, 0x2

    .line 99
    const v2, 0xf4240

    .line 100
    goto :goto_0

    .line 94
    :pswitch_5
    const/4 v1, 0x1

    .line 95
    const v2, 0xf4240

    .line 96
    goto :goto_0

    .line 90
    :pswitch_6
    const/4 v1, 0x0

    .line 91
    const v2, 0xf4240

    .line 92
    goto :goto_0

    .line 66
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "oldValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 86
    goto :goto_0

    .line 83
    :pswitch_8
    const/4 v1, 0x4

    .line 84
    goto :goto_0

    .line 80
    :pswitch_9
    const/4 v1, 0x3

    .line 81
    goto :goto_0

    .line 77
    :pswitch_a
    const/4 v1, 0x2

    .line 78
    goto :goto_0

    .line 74
    :pswitch_b
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 71
    :pswitch_c
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 69
    :pswitch_d
    nop

    .line 126
    .end local v3    # "oldValue":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v3, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 128
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
