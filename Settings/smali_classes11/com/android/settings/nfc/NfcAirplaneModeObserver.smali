.class public Lcom/android/settings/nfc/NfcAirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "NfcAirplaneModeObserver.java"


# static fields
.field static final AIRPLANE_MODE_URI:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAirplaneMode:I

.field private final mContext:Landroid/content/Context;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->updateNfcPreference()V

    return-void
.end method

.method private updateNfcPreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget v2, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mAirplaneMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mAirplaneMode:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mAirplaneMode:I

    iget v1, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mAirplaneMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->updateNfcPreference()V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
