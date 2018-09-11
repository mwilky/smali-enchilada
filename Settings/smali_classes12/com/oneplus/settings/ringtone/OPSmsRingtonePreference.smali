.class public Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "OPSmsRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method private getDefaultSmsNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_notification"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "ringtonePickerIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getShowSilent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getDefaultSmsNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_notification"

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    return-void
.end method
