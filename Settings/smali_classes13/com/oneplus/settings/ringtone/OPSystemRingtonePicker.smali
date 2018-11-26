.class public Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPSystemRingtonePicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFUALT_SELECT_KEY:Ljava/lang/String; = "defualt_select"

.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    return-void
.end method

.method private initPreference()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160093

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string v0, "defualt_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->initPreference()V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateSelected()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->stopAnyPlayingRingtone()V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "no_select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f120bd3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->stopAnyPlayingRingtone()V

    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v1

    if-ne v1, v4, :cond_1

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    const/16 v1, 0x12c

    iget-object v7, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v1, v7}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->playRingtone(ILandroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v1

    if-ne v1, v4, :cond_3

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v2, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    :cond_3
    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v6, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    :goto_2
    return v2
.end method

.method protected updateSelected()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120bd3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    const-string v0, "-1"

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
