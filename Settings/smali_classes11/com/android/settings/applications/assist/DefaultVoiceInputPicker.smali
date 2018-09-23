.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Ljava/lang/String;

.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    iget-object v1, v10, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistRestrict:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    or-int/2addr v9, v11

    new-instance v12, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    move-object v1, v12

    move-object v2, v7

    move-object v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez v9, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    move v11, v1

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    if-nez v11, :cond_2

    move v6, v10

    goto :goto_3

    :cond_2
    move v6, v8

    :goto_3
    new-instance v14, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mUserId:I

    move-object v1, v14

    move-object v2, v7

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160043

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v1}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mAssistRestrict:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    iget-object v3, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_interaction_service"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_recognition_service"

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    iget-object v3, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_interaction_service"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_recognition_service"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    :cond_2
    goto :goto_1

    :cond_3
    return v2
.end method
