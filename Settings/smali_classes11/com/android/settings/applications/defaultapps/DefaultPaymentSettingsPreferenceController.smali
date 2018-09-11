.class public Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 45
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "default_payment_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 52
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    .line 68
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 72
    .local v0, "app":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "defaultComponentString":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 76
    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 77
    .local v2, "defaultAppName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "componentString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 81
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 82
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 85
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    .end local v2    # "defaultAppName":Ljava/lang/CharSequence;
    .end local v3    # "componentString":[Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 89
    :cond_4
    const v2, 0x7f12014a

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 92
    :goto_2
    return-void
.end method
