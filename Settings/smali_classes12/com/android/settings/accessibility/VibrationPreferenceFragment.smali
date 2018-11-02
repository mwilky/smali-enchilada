.class public abstract Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;,
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_INTENSITY_HIGH:Ljava/lang/String; = "intensity_high"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_INTENSITY_LOW:Ljava/lang/String; = "intensity_low"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_INTENSITY_MEDIUM:Ljava/lang/String; = "intensity_medium"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_INTENSITY_OFF:Ljava/lang/String; = "intensity_off"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_INTENSITY_ON:Ljava/lang/String; = "intensity_on"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VibrationPreferenceFragment"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    return-void
.end method

.method private loadCandidates(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v3, "intensity_off"

    new-instance v4, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v5, "intensity_off"

    const v6, 0x7f120098

    invoke-direct {v4, p0, v5, v6, v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "intensity_low"

    new-instance v3, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v4, "intensity_low"

    const v5, 0x7f120096

    const/4 v6, 0x1

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "intensity_medium"

    new-instance v3, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v4, "intensity_medium"

    const v5, 0x7f120097

    const/4 v6, 0x2

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "intensity_high"

    new-instance v3, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v4, "intensity_high"

    const v5, 0x7f120095

    const/4 v6, 0x3

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v3, "intensity_off"

    new-instance v4, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v5, "intensity_off"

    const v6, 0x7f12119c

    invoke-direct {v4, p0, v5, v6, v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "intensity_on"

    new-instance v3, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v4, "intensity_on"

    const v5, 0x7f12119d

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v0, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "intensity_on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    move v4, v5

    nop

    :cond_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract getDefaultVibrationIntensity()I
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getVibrationIntensitySetting()Ljava/lang/String;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->register()V

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->loadCandidates(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onDetach()V

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method protected onVibrationIntensitySelected(I)V
    .locals 0

    return-void
.end method

.method protected playVibrationPreview()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getPreviewVibrationAudioAttributesUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    if-nez v0, :cond_0

    const-string v1, "VibrationPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to set unknown intensity (key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->onVibrationIntensitySelected(I)V

    const/4 v1, 0x1

    return v1
.end method
