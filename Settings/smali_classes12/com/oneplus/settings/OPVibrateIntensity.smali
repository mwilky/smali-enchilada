.class public Lcom/oneplus/settings/OPVibrateIntensity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPVibrateIntensity.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_INCOMING_CALL_VIBRATE_INTENSITY:Ljava/lang/String; = "incoming_call_vibrate_intensity"

.field private static final KEY_NOTICE_VIBRATE_INTENSITY:Ljava/lang/String; = "notice_vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH_INTENSITY:Ljava/lang/String; = "vibrate_on_touch_intensity"

.field private static final TAG:Ljava/lang/String; = "OPVibrateIntensity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCunrrentType:Ljava/lang/String;

.field private mIncomingCallVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mNoticeVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mVibrateOnTouchIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J

.field private sRepeatVibrateIntensity:[[J

.field private sTouchVibrateIntensity:[[J

.field private sVibrateIntensity:[[J

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 24
    const-string v0, "incoming_call_vibrate_intensity"

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v1, v0, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x9

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0xd

    new-array v6, v4, [J

    fill-array-data v6, :array_2

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x11

    new-array v6, v6, [J

    fill-array-data v6, :array_3

    const/4 v8, 0x3

    aput-object v6, v1, v8

    new-array v4, v4, [J

    fill-array-data v4, :array_4

    const/4 v6, 0x4

    aput-object v4, v1, v6

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    .line 37
    new-array v1, v8, [[J

    new-array v4, v0, [J

    fill-array-data v4, :array_5

    aput-object v4, v1, v3

    new-array v4, v0, [J

    fill-array-data v4, :array_6

    aput-object v4, v1, v5

    new-array v4, v0, [J

    fill-array-data v4, :array_7

    aput-object v4, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sRepeatVibrateIntensity:[[J

    .line 40
    new-array v1, v8, [[J

    new-array v4, v6, [J

    fill-array-data v4, :array_8

    aput-object v4, v1, v3

    new-array v4, v6, [J

    fill-array-data v4, :array_9

    aput-object v4, v1, v5

    new-array v4, v6, [J

    fill-array-data v4, :array_a

    aput-object v4, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibrateIntensity:[[J

    .line 42
    new-array v1, v8, [[J

    new-array v4, v2, [J

    fill-array-data v4, :array_b

    aput-object v4, v1, v3

    new-array v4, v2, [J

    fill-array-data v4, :array_c

    aput-object v4, v1, v5

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    .line 46
    new-array v1, v8, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_e

    aput-object v2, v1, v3

    new-array v2, v0, [J

    fill-array-data v2, :array_f

    aput-object v2, v1, v5

    new-array v0, v0, [J

    fill-array-data v0, :array_10

    aput-object v0, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data

    :array_5
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_6
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_7
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_8
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_9
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_a
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_b
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_c
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_d
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_e
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_f
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_10
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 79
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 80
    .local v0, "modePreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "entries":[Ljava/lang/String;
    aget-object v2, v1, p2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 166
    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2
    .param p1, "value"    # I

    .line 139
    const-string v0, "incoming_call_vibrate_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    const-string v0, "incoming_call_vibrate_intensity"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    .line 144
    :cond_0
    const-string v0, "notice_vibrate_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string v0, "notice_vibrate_intensity"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "vibrate_on_touch_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on_touch_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    const-string v0, "vibrate_on_touch_intensity"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 157
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 160
    :cond_3
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 7
    .param p1, "value"    # I

    .line 108
    const-string v0, "OPVibrateIntensity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDialogListItemClick--index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "incoming_call_vibrate_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "incoming_call_vibrate_mode"

    .line 111
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "modevalue":I
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 114
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v2

    goto :goto_0

    .line 116
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v2

    goto :goto_0

    .line 118
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v2

    .line 121
    :cond_2
    :goto_0
    nop

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 122
    const-string v3, "OPVibrateIntensity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVibratePatternrhythm ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 125
    .end local v0    # "modevalue":I
    goto :goto_2

    :cond_4
    const-string v0, "notice_vibrate_intensity"

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 129
    :cond_5
    const-string v0, "vibrate_on_touch_intensity"

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 134
    :cond_6
    :goto_2
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 212
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f160099

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    .line 62
    :cond_0
    const-string v0, "incoming_call_vibrate_intensity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mIncomingCallVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 63
    const-string v0, "notice_vibrate_intensity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mNoticeVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 64
    const-string v0, "vibrate_on_touch_intensity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "value":I
    const-string v1, "incoming_call_vibrate_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "notice_vibrate_intensity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    const-string v1, "notice_vibrate_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "vibrate_on_touch_intensity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    const-string v1, "vibrate_on_touch_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "entriesValue":[Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "entries":[Ljava/lang/String;
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    .line 92
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    .line 93
    const-string v3, "incoming_call_vibrate_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string v4, "incoming_call_vibrate_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 95
    const-string v3, "incoming_call_vibrate_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    const-string v3, "notice_vibrate_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string v4, "notice_vibrate_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 98
    const-string v3, "notice_vibrate_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_1
    const-string v3, "vibrate_on_touch_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string v4, "vibrate_on_touch_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 101
    const-string v3, "vibrate_on_touch_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    .line 103
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    .line 104
    const/4 v3, 0x1

    return v3
.end method
