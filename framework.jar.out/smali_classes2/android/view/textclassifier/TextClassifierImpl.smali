.class public final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;,
        Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "androidtc"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.model"


# instance fields
.field private mAllModelFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mLoggerLock:Ljava/lang/Object;

.field private mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNative:Landroid/view/textclassifier/TextClassifierImplNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoggerLock"
    .end annotation
.end field

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 1

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {p0, p1, p2, v0}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    new-instance v0, Landroid/view/textclassifier/GenerateLinksLogger;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksLogSampleRate()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/GenerateLinksLogger;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    return-void
.end method

.method static synthetic access$000(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error closing file."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v3}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v3

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v1, v7

    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v8

    cmpl-float v8, v8, v6

    if-lez v8, :cond_0

    aget-object v5, v1, v7

    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    iget-object v8, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    move-object/from16 v9, p5

    invoke-static {v8, v9, v5, v2}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/time/Instant;Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;

    iget-object v11, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    iget-object v13, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    invoke-virtual {v11}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    iget-object v12, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->getRequestCode()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-static {v12}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    const/4 v7, 0x0

    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/textclassifier/TextClassification$Builder;->addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;

    goto :goto_1

    :cond_4
    move-object/from16 v8, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct {v0, v8, v10, v11}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v12

    return-object v12
.end method

.method private createId(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result v5

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getSupportedLocales()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Landroid/view/textclassifier/SelectionSessionLogger;->createId(Ljava/lang/String;IILandroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyNativeIfExistsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    :cond_0
    return-void
.end method

.method private findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->listAllModelsLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v4, v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isAnyLanguageSupported(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->isPreferredTo(Landroid/view/textclassifier/TextClassifierImpl$ModelFile;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_1
    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.text_is_editable"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.text_is_not_editable"

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListEditable()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_2
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListNotEditable()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_0
    move-object p1, v1

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestModelLocked(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "androidtc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->destroyNativeIfExistsLocked()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/view/textclassifier/TextClassifierImplNative;-><init>(I)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModel:Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    :cond_2
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mNative:Landroid/view/textclassifier/TextClassifierImplNative;

    monitor-exit v0

    return-object v2

    :cond_3
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No model for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private listAllModelsLocked()Ljava/util/List;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$ModelFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/textclassifier/textclassifier.model"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/data/misc/textclassifier/textclassifier.model"

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/textclassifier/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "textclassifier\\.(.*)\\.model"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAllModelFiles:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 11

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getClassifyTextMaxRangeLength()I

    move-result v2

    if-gt v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    :goto_0
    move-object v9, v2

    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v4

    new-instance v5, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v7, v10, v8}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v2

    move-object v10, v2

    array-length v2, v10

    if-lez v2, :cond_1

    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v6

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    move-object v2, p0

    move-object v3, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error getting text classification info."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 18

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)V

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->getHints()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-object v6, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v6

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v7

    new-instance v8, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v12

    invoke-static {v12}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v8}, Landroid/view/textclassifier/TextClassifierImplNative;->annotate(Ljava/lang/String;Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v9, :cond_5

    aget-object v12, v8, v11

    nop

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getClassification()[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v13

    array-length v14, v13

    if-eqz v14, :cond_4

    aget-object v14, v13, v10

    invoke-virtual {v14}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    nop

    move-object/from16 v17, v0

    goto :goto_3

    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move v15, v10

    :goto_2
    array-length v10, v13

    if-ge v15, v10, :cond_3

    aget-object v10, v13, v15

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v0

    aget-object v0, v13, v15

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getStartIndex()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->getEndIndex()I

    move-result v10

    invoke-virtual {v3, v0, v10, v14}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;

    goto :goto_3

    :cond_4
    move-object/from16 v17, v0

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v15, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object v12, v9

    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    sub-long v13, v15, v4

    move-object v11, v0

    invoke-virtual/range {v9 .. v14}, Landroid/view/textclassifier/GenerateLinksLogger;->logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v4, "androidtc"

    const-string v5, "Error getting links info."

    invoke-static {v4, v5, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v4, p1

    invoke-interface {v0, v4}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLoggerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-direct {v1}, Landroid/view/textclassifier/SelectionSessionLogger;-><init>()V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/SelectionSessionLogger;->writeEvent(Landroid/view/textclassifier/SelectionEvent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 13

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getSuggestSelectionMaxRangeLength()I

    move-result v2

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/textclassifier/TextClassifierImpl;->getNative(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassifierImplNative;

    move-result-object v4

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->isDarkLaunchAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    new-instance v8, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;

    invoke-direct {v8, v2}, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5, v7, v8}, Landroid/view/textclassifier/TextClassifierImplNative;->suggestSelection(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;)[I

    move-result-object v5

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    move v5, v7

    move v7, v8

    :goto_0
    if-ge v5, v7, :cond_2

    if-ltz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v8

    if-gt v5, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v8

    if-lt v7, v8, :cond_2

    new-instance v8, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v8, v5, v7}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    new-instance v9, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12, v2}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5, v7, v9}, Landroid/view/textclassifier/TextClassifierImplNative;->classifyText(Ljava/lang/String;IILandroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;)[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    move-result-object v9

    array-length v10, v9

    nop

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v11, v9, v6

    invoke-virtual {v11}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v9, v6

    invoke-virtual {v12}, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->getScore()F

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v11

    invoke-direct {p0, v1, v6, v11}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/textclassifier/TextSelection$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v6

    return-object v6

    :cond_2
    const-string v6, "androidtc"

    const-string v8, "Got bad indices for input text. Ignoring result."

    invoke-static {v6, v8}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error suggesting selection for text. No changes to selection suggested."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
