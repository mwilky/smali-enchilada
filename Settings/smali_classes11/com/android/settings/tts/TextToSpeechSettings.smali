.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DBG:Z = false

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final KEY_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field private static final KEY_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_ENGINE_LOCALE:Ljava/lang/String; = "tts_default_lang"

.field private static final KEY_TTS_ENGINE_PREFERENCE:Ljava/lang/String; = "tts_engine_preference"

.field private static final MAX_SPEECH_PITCH:I = 0x190

.field private static final MAX_SPEECH_RATE:I = 0x258

.field private static final MIN_SPEECH_PITCH:I = 0x19

.field private static final MIN_SPEECH_RATE:I = 0xa

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final STATE_KEY_LOCALE_ENTRIES:Ljava/lang/String; = "locale_entries"

.field private static final STATE_KEY_LOCALE_ENTRY_VALUES:Ljava/lang/String; = "locale_entry_values"

.field private static final STATE_KEY_LOCALE_VALUE:Ljava/lang/String; = "locale_value"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultPitch:I

.field private mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

.field private mDefaultRate:I

.field private mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mLocalePreference:Landroid/support/v7/preference/ListPreference;

.field private mSampleText:Ljava/lang/String;

.field private mSelectedLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$5;

    invoke-direct {v0}, Lcom/android/settings/tts/TextToSpeechSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method private checkDefaultLocale()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default language from engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_2
    return-void
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private displayNetworkAlert()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1211e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_1
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_2
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    nop

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v0

    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v1

    :cond_7
    :goto_3
    return v1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    const v0, 0x7f1211e1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSampleText()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "language"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "country"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "variant"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7bf

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getSeekBarProgressFromValue(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, -0xa

    return v0

    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x19

    return v0

    :cond_1
    return p2
.end method

.method private getValueFromSeekBarProgress(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    add-int/2addr v0, p2

    return v0

    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    add-int/2addr v0, p2

    return v0

    :cond_1
    return p2
.end method

.method private initSettings()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const-string v1, "tts_default_pitch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_rate"

    const/16 v3, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_pitch"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x190

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    const-string v2, "tts_engine_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->resetTts()V

    return-void
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "TextToSpeechSettings"

    const-string v2, "Voice data check complete, but no engine bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_synth"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "availableVoices"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v1, "TextToSpeechSettings"

    const-string v2, "Voice data check complete, but no available voices found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_3
    return-void
.end method

.method private resetTts()V
    .locals 3

    const-string v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    const-string v2, "tts_default_pitch"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    return-void
.end method

.method private setLocalePreference(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f1211f1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method private speakSampleText()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Network required for sample synthesis for requested language"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    nop

    :goto_1
    return-void
.end method

.method private updateDefaultLocalePref(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "availableVoices"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "unavailableVoices"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/android/settings/tts/TextToSpeechSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/tts/TextToSpeechSettings$4;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1211f2

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    const-string v8, ""

    aput-object v8, v7, v2

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/util/Locale;

    invoke-virtual {v10, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    :cond_4
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    aput-object v10, v5, v2

    add-int/lit8 v10, v2, 0x1

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v2

    nop

    move v2, v10

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->setLocalePreference(I)V

    return-void

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private updateLanguageTo(Ljava/util/Locale;)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const-string v2, "TextToSpeechSettings"

    const-string v3, "updateLanguageTo called with unknown locale argument"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_4

    move-object v3, p1

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    return-void
.end method

.method private updateSpeechPitchValue(I)V
    .locals 3

    const-string v0, "tts_default_pitch"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_pitch"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS pitch setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateSpeechRate(I)V
    .locals 3

    const-string v0, "tts_default_rate"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultLocalePref(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600cc

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const-string v0, "tts_default_lang"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tts_default_pitch"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v0, "action_buttons"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    const v1, 0x7f1211f3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v2, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-mqMfqhP2l_0b2lu0aliM8gSxIQ;

    invoke-direct {v2, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-mqMfqhP2l_0b2lu0aliM8gSxIQ;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const v3, 0x7f1211f6

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v3, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-PSeoELUhAn9aTlkws2o7dPjqCc;

    invoke-direct {v3, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-PSeoELUhAn9aTlkws2o7dPjqCc;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v0, "locale_entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "locale_entry_values"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "locale_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    array-length v6, v0

    if-lez v6, :cond_2

    move v2, v1

    nop

    :cond_2
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :goto_1
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 4

    const-string v0, "tts_engine_preference"

    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "TextToSpeechSettings"

    const-string v3, "settingsIntent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    goto :goto_1

    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    :cond_2
    goto :goto_0

    :cond_3
    nop

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateLanguageTo(Ljava/util/Locale;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :goto_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
