.class public Lcom/oneplus/settings/notification/OPEarphoneMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableabsvol"

.field private static final INTENT_TTS_CALL:Ljava/lang/String; = "oneplus.intent.action.TTS_CALL"

.field private static final KEY_AUTO_ANSWER_VIA_BLUETOOTH:Ljava/lang/String; = "auto_answer_via_bluetooth"

.field private static final KEY_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final KEY_BLUETOOTH_VOLUME_SWITCH:Ljava/lang/String; = "bluetooth_volume_switch"

.field private static final KEY_CALL_INFORMATION_BROADCAST:Ljava/lang/String; = "call_information_broadcast"

.field private static final KEY_GOOGLE_TTS:Ljava/lang/String; = "google_tts"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

.field private mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mGoogleTTS:Landroid/support/v7/preference/Preference;

.field private mNotificationRingtone:Landroid/support/v7/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPEarphoneMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 49
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->doClickLink()V

    return-void
.end method

.method private confirmCallInformationBroadcast()V
    .locals 5

    .line 131
    new-instance v0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$1;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    .line 143
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/oneplus/settings/notification/OPEarphoneMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$2;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    .line 154
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    const v3, 0x7f120ba7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 156
    const v3, 0x7f120ba9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 157
    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 158
    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 161
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 162
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, "textview":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    new-instance v4, Lcom/oneplus/settings/notification/OPEarphoneMode$3;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode$3;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    return-void
.end method

.method private doClickLink()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 202
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 203
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 204
    .local v2, "browserClassName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120ba8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 207
    .local v4, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 214
    const-string v0, "android.intent.category.DEFAULT"

    .line 215
    .local v0, "default_browser":Ljava/lang/String;
    const-string v1, "android.intent.category.BROWSABLE"

    .line 216
    .local v1, "browsable":Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    .line 218
    .local v2, "view":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v4, "http://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 222
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 226
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 227
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 228
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    return-object v5

    .line 230
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    return-object v5
.end method

.method private sendTTSCallIntent(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 251
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.TTS_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tts_call_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private updateNotificationRingtoneSummary(I)V
    .locals 4
    .param p1, "value"    # I

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f030088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 324
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f16007a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "earmode_from_notify"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 75
    .local v3, "flag":Z
    if-ne v3, v1, :cond_0

    .line 76
    const-string v4, "ear.entrance"

    invoke-static {v4, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 79
    .end local v3    # "flag":Z
    :cond_0
    const-string v3, "auto_play"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    .line 80
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    .line 82
    nop

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_auto_play"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    .line 82
    nop

    .line 81
    move v4, v2

    goto :goto_0

    .line 82
    :cond_1
    nop

    .line 81
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 83
    const-string v3, "auto_answer_via_bluetooth"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 84
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 86
    nop

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_answer_via_bluetooth"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_2

    .line 86
    nop

    .line 85
    move v4, v2

    goto :goto_1

    .line 86
    :cond_2
    nop

    .line 85
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    const-string v3, "call_information_broadcast"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    .line 88
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    .line 90
    nop

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_call_information_broadcast"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_3

    .line 90
    nop

    .line 89
    move v1, v2

    goto :goto_2

    .line 90
    :cond_3
    nop

    .line 89
    :goto_2
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    const-string v1, "call_information_broadcast"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)Z

    .line 94
    :cond_4
    const-string v1, "notification_ringtone"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 97
    const-string v1, "notification_ringtone"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)Z

    .line 99
    :cond_5
    const-string v1, "bluetooth_volume_switch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    const-string v1, "google_tts"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    :cond_6
    const-string v1, "google_tts"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)Z

    .line 106
    :cond_7
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 261
    const-string v0, "auto_play"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 262
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 263
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_auto_play"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 264
    const-string v1, "ear.Autoplay"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 265
    .end local v0    # "enable":Z
    goto/16 :goto_2

    :cond_0
    const-string v0, "call_information_broadcast"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 267
    .restart local v0    # "enable":Z
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_call_information_broadcast"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 269
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 273
    :cond_1
    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V

    goto :goto_0

    .line 276
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_call_information_broadcast"

    invoke-static {v3, v4, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 280
    :cond_3
    :goto_0
    const-string v1, "ear.TTS"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 281
    .end local v0    # "enable":Z
    goto/16 :goto_2

    :cond_4
    const-string v0, "notification_ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120bcf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_notification_ringtone"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 285
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    .line 286
    const-string v1, "ear.remind"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 287
    .end local v0    # "value":I
    goto :goto_2

    :cond_5
    const-string v0, "bluetooth_volume_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 289
    .local v0, "enable":Z
    const-string v1, "persist.bluetooth.disableabsvol"

    .line 290
    if-eqz v0, :cond_6

    const-string v2, "false"

    goto :goto_1

    :cond_6
    const-string v2, "true"

    .line 289
    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "ear.vol"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 292
    .end local v0    # "enable":Z
    goto :goto_2

    :cond_7
    const-string v0, "auto_answer_via_bluetooth"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 293
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 294
    .restart local v0    # "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_answer_via_bluetooth"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 296
    .end local v0    # "enable":Z
    :cond_8
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 236
    const-string v0, "google_tts"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "com.google.android.tts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 246
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_notification_ringtone"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 112
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    .line 113
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    const-string v4, "persist.bluetooth.disableabsvol"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_call_information_broadcast"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    move v1, v3

    .line 117
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 119
    .end local v1    # "enable":Z
    :cond_1
    return-void
.end method
