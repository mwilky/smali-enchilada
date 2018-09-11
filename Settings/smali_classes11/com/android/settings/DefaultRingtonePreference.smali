.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRingtonePreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .line 67
    const-string v0, "volume"

    const-string v1, "ringtone click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    .line 59
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 52
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 53
    return-void
.end method
