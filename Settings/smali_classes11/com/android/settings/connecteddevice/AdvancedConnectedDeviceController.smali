.class public Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AdvancedConnectedDeviceController.java"


# static fields
.field private static final DRIVING_MODE_SETTINGS_ENABLED:Ljava/lang/String; = "gearhead:driving_mode_settings_enabled"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController;

    const-string v1, "toggle_nfc"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .local v0, "nfcPreferenceController":Lcom/android/settings/nfc/NfcPreferenceController;
    nop

    .line 60
    invoke-static {p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->isDrivingModeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 59
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I

    move-result v1

    return v1
.end method

.method static getConnectedDevicesSummaryResourceId(Lcom/android/settings/nfc/NfcPreferenceController;Z)I
    .locals 1
    .param p0, "nfcPreferenceController"    # Lcom/android/settings/nfc/NfcPreferenceController;
    .param p1, "isDrivingModeAvailable"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 78
    const v0, 0x7f12042e

    .local v0, "resId":I
    :goto_0
    goto :goto_1

    .line 82
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f12042c

    goto :goto_0

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    .line 87
    const v0, 0x7f12042d

    goto :goto_0

    .line 90
    :cond_2
    const v0, 0x7f12042b

    .line 94
    .restart local v0    # "resId":I
    :goto_1
    return v0
.end method

.method public static getConnectedDevicesSummaryString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController;

    const-string v1, "toggle_nfc"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    .local v0, "nfcPreferenceController":Lcom/android/settings/nfc/NfcPreferenceController;
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "paymentPreferenceController":Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;
    nop

    .line 107
    invoke-static {p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->isDrivingModeAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 106
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryString(Landroid/content/Context;Lcom/android/settings/nfc/NfcPreferenceController;Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static getConnectedDevicesSummaryString(Landroid/content/Context;Lcom/android/settings/nfc/NfcPreferenceController;Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;Z)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nfcPreferenceController"    # Lcom/android/settings/nfc/NfcPreferenceController;
    .param p2, "paymentPreferenceController"    # Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;
    .param p3, "isDrivingModeAvailable"    # Z

    .line 115
    const-string v0, ""

    .line 117
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v1

    const v2, 0x7f120d9c

    if-eqz v1, :cond_0

    .line 118
    const v1, 0x7f120ee6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "castSettingSummary":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const v6, 0x7f120783

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const v3, 0x7f120bac

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "tapPaySettingSummary":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .end local v3    # "tapPaySettingSummary":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDeviceConnetionSummaryString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController;

    const-string v1, "toggle_nfc"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .local v0, "nfcPreferenceController":Lcom/android/settings/nfc/NfcPreferenceController;
    nop

    .line 146
    invoke-static {p0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->isDrivingModeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 145
    invoke-static {p0, v0, v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getDeviceConnetionSummaryString(Landroid/content/Context;Lcom/android/settings/nfc/NfcPreferenceController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method static getDeviceConnetionSummaryString(Landroid/content/Context;Lcom/android/settings/nfc/NfcPreferenceController;Z)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nfcPreferenceController"    # Lcom/android/settings/nfc/NfcPreferenceController;
    .param p2, "isDrivingModeAvailable"    # Z

    .line 152
    const v0, 0x7f120349

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v1

    const v2, 0x7f120d9c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, 0x7f120783

    if-eqz v1, :cond_0

    .line 155
    const v1, 0x7f120ee6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "nfcSettingSummary":Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v1, v7, v3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "castSettingSummary":Ljava/lang/String;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v2, v5, v3

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .end local v1    # "nfcSettingSummary":Ljava/lang/String;
    .end local v2    # "castSettingSummary":Ljava/lang/String;
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "castSettingSummary":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .end local v1    # "castSettingSummary":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method static isDrivingModeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gearhead:driving_mode_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
