.class public Lcom/oneplus/settings/better/OPScreenBetterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenBetterSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_COOL_SETTINGS:Ljava/lang/String; = "cool_settings"

.field private static final KEY_NORMAL_SETTINGS:Ljava/lang/String; = "nomal_settings"

.field private static final KEY_WARM_SETTINGS:Ljava/lang/String; = "warm_settings"

.field private static final TAG:Ljava/lang/String; = "OPScreenBetterSettings"

.field private static final TYPE_ONE:Ljava/lang/String; = "oem:qdcm:mode_1"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"

.field private static final TYPE_THREE:Ljava/lang/String; = "oem:qdcm:mode_3"

.field private static final TYPE_TWO:Ljava/lang/String; = "oem:qdcm:mode_2"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private TYPE_SETTINGS_ID:I

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

.field private mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    .line 33
    const-string v1, "oem:qdcm:mode_1"

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    .line 79
    new-instance v0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;-><init>(Lcom/oneplus/settings/better/OPScreenBetterSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 22
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPScreenBetterSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 22
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/better/OPScreenBetterSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 22
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .line 22
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/better/OPScreenBetterSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method private updateRadioButtons(I)V
    .locals 3
    .param p1, "activated"    # I

    .line 212
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 213
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 216
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 218
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 220
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 226
    :cond_2
    :goto_0
    return-void
.end method

.method private updateRadioButtons(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "url : updateLocation mode : 2-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 192
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 193
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 208
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f160092

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "nomal_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 58
    const-string v0, "warm_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 59
    const-string v0, "cool_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "emiter"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mNormalSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mWarmSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mCoolSettings:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    .line 179
    :cond_2
    :goto_0
    const-string v0, "OPScreenBetterSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_SETTINGS_ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->TYPE_SETTINGS_ID:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->updateRadioButtons(Lcom/android/settings/ui/RadioButtonPreference;)V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_better_status"

    .line 72
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    .line 74
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->updateRadioButtons(I)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings;->mBetterStatus:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method
