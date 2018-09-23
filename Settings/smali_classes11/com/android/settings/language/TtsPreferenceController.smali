.class public Lcom/android/settings/language/TtsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TtsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_TTS_SETTINGS:Ljava/lang/String; = "tts_settings_summary"

.field private static final KEY_VOICE_CATEGORY:Ljava/lang/String; = "voice_category"


# instance fields
.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TtsEngines;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "tts_settings_summary"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/TtsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
