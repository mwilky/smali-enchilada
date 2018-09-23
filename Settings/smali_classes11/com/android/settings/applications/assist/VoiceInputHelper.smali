.class public final Lcom/android/settings/applications/assist/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInputHelper"


# instance fields
.field final mAvailableInteractionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognizerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableVoiceInteractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentRecognizer:Landroid/content/ComponentName;

.field mCurrentVoiceInteraction:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildUi()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "voice_interaction_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    :goto_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    iget-object v7, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v8, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v9, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v8, v9, v10}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v9, "VoiceInteractionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in VoiceInteractionService "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v9, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    iget-object v11, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v6, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_recognition_service"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    goto :goto_3

    :cond_3
    iput-object v2, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    :goto_3
    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v0, v5

    :goto_4
    move v7, v0

    if-ge v7, v4, :cond_9

    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v11, 0x0

    move-object v12, v2

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v13, "android.speech"

    invoke-virtual {v10, v0, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v11, v0

    if-eqz v11, :cond_6

    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    :goto_5
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move v15, v14

    const/4 v2, 0x1

    if-eq v14, v2, :cond_4

    const/4 v2, 0x2

    if-eq v15, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, "recognition-service"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v0, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_7

    :goto_6
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    :cond_5
    :try_start_1
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Meta-data does not start with recognition-service tag"

    invoke-direct {v14, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.speech meta-data for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "VoiceInputHelper"

    const-string v5, "error parsing recognition service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v11, :cond_7

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "VoiceInputHelper"

    const-string v5, "error parsing recognition service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v11, :cond_7

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "VoiceInputHelper"

    const-string v5, "error parsing recognition service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    iget-object v5, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, v5, v13, v12}, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_4

    :goto_8
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw v0

    :cond_9
    iget-object v0, v1, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
