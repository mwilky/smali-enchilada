.class public Lcom/android/settings/notification/DefaultNotificationTonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "DefaultNotificationTonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/DefaultNotificationTonePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateRingtoneName(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;-><init>(Lcom/android/settings/notification/DefaultNotificationTonePreference;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/DefaultNotificationTonePreference;->updateRingtoneName(Landroid/net/Uri;)V

    return-void
.end method
