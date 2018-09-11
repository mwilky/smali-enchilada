.class public Lcom/android/settings/notification/DefaultNotificationTonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "DefaultNotificationTonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/DefaultNotificationTonePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/DefaultNotificationTonePreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateRingtoneName(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 65
    new-instance v0, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;-><init>(Lcom/android/settings/notification/DefaultNotificationTonePreference;Landroid/net/Uri;)V

    .line 77
    .local v0, "ringtoneNameTask":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 55
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtone"    # Landroid/net/Uri;

    .line 60
    iput-object p1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/DefaultNotificationTonePreference;->updateRingtoneName(Landroid/net/Uri;)V

    .line 62
    return-void
.end method
