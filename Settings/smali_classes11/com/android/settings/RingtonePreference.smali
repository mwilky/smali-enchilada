.class public Lcom/android/settings/RingtonePreference;
.super Landroid/support/v7/preference/Preference;
.source "RingtonePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field protected mUserContext:Landroid/content/Context;

.field protected mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    .line 70
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mRequestCode:I

    return v0
.end method

.method public getRingtoneType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 235
    if-eqz p3, :cond_1

    .line 236
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 238
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 243
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 0
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 232
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 207
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 159
    if-eqz p1, :cond_1

    .line 160
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuyang--mRingtoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 173
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 189
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .line 212
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 222
    return-void

    .line 226
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 229
    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 104
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    .line 105
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    .line 125
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    .line 144
    return-void
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 79
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    .line 81
    return-void
.end method
