.class public Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFUALT_SELECT_KEY:Ljava/lang/String; = "defualt_select"

.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final MAIN_KEY:Ljava/lang/String; = "setting_title"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"

.field private static final SIM1_SELECT_KEY:Ljava/lang/String; = "sim1_select"

.field private static final SIM2_SELECT_KEY:Ljava/lang/String; = "sim2_select"

.field private static final SWITCH_KEY:Ljava/lang/String; = "setting_key"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mMainRoot:Landroid/preference/PreferenceCategory;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mRequestCode:I

.field private mSim1Layout:Landroid/preference/Preference;

.field private mSim1Uri:Landroid/net/Uri;

.field private mSim2Layout:Landroid/preference/Preference;

.field private mSim2Uri:Landroid/net/Uri;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/SwitchPreference;

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

    .line 26
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    .line 382
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method private initPreference(Z)V
    .locals 6
    .param p1, "is"    # Z

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 116
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 128
    .end local v0    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 131
    :cond_2
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 132
    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 138
    .end local v1    # "i":I
    :cond_4
    if-eqz p1, :cond_5

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_5
    :goto_3
    return-void
.end method

.method private switchSimRingtone(Z)V
    .locals 2
    .param p1, "is"    # Z

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 105
    :goto_0
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 357
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 359
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 360
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 57
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const v0, 0x7f16008f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "setting_title"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    .line 60
    const-string v0, "setting_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 61
    const-string v0, "sim1_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    .line 62
    const-string v0, "sim2_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    .line 63
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 64
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 70
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->switchSimRingtone(Z)V

    goto :goto_0

    .line 76
    :cond_1
    const v0, 0x7f160090

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 77
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 78
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 79
    const-string v0, "defualt_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 94
    return-void
.end method

.method private updateSimSwitch()V
    .locals 6

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim1Enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim2Enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    :cond_2
    nop

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 227
    nop

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 230
    nop

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 230
    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 232
    .local v0, "summany1":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    nop

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v4, 0x2

    .line 232
    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v1

    .line 234
    .local v1, "summany2":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 235
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 237
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    iget-object v4, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    const v5, 0x7f120bb9

    if-eqz v4, :cond_3

    .line 239
    iget-object v4, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    iget-object v4, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 412
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    if-ne p1, v0, :cond_0

    .line 413
    if-eqz p3, :cond_0

    .line 414
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 415
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 416
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 418
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 422
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updatePreference()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 407
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    .line 408
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isSelectedNone:Z

    .line 251
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "key":Ljava/lang/String;
    const-string v2, "setting_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 255
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    .line 254
    invoke-static {v2, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    .line 256
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    nop

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone2(Landroid/content/Context;)V

    .line 259
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto/16 :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto/16 :goto_0

    .line 272
    :cond_1
    const-string v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v2, "ringtone_for_contacts"

    iget-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_2
    const-string v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x7f120bb6

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 291
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    nop

    .line 294
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 293
    invoke-static {v2, v6, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 296
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isSelectedNone:Z

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 305
    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_0

    .line 306
    :cond_5
    const-string v2, "sim1_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_6
    const-string v2, "sim2_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_7
    const-string v2, "defualt_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v6, 0x12c

    if-eqz v2, :cond_9

    .line 321
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 322
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v6, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 323
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 324
    const-string v2, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUriForDefaultItem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 326
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_8

    .line 328
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 331
    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 333
    :cond_9
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 334
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v6, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_a

    .line 336
    nop

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 336
    invoke-static {v2, v6, v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 339
    :cond_a
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 340
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v2, :cond_b

    .line 341
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 343
    :cond_b
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 344
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 346
    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 348
    :goto_0
    return v3
.end method

.method protected onStart()V
    .locals 2

    .line 365
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStart()V

    .line 366
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 376
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStop()V

    .line 380
    return-void
.end method

.method protected updateSelected()V
    .locals 7

    .line 154
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSimSwitch()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const/4 v2, 0x0

    const v3, 0x7f120bb6

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 160
    const-string v0, "-1"

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 162
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 163
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_8

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 177
    const-string v0, "-1"

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 178
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 179
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 189
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 190
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_8

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 201
    :cond_6
    nop

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 201
    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 204
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_7
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 207
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 208
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    .end local v0    # "summany":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    :cond_8
    :goto_1
    return-void
.end method
