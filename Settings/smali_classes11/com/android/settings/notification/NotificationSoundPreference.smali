.class public Lcom/android/settings/notification/NotificationSoundPreference;
.super Lcom/android/settings/RingtonePreference;
.source "NotificationSoundPreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->setIntent(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method private updateRingtoneName(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 63
    new-instance v0, Lcom/android/settings/notification/NotificationSoundPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference$1;-><init>(Lcom/android/settings/notification/NotificationSoundPreference;Landroid/net/Uri;)V

    .line 83
    .local v0, "ringtoneNameTask":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 53
    if-eqz p3, :cond_0

    .line 54
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 55
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 59
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtone"    # Landroid/net/Uri;

    .line 46
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    .line 47
    const-string v0, "\u00a0"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V

    .line 49
    return-void
.end method
