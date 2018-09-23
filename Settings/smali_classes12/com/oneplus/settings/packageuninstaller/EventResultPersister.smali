.class Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;,
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;,
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;
    }
.end annotation


# static fields
.field static final EXTRA_ID:Ljava/lang/String; = "EventResultPersister.EXTRA_ID"

.field static final GENERATE_NEW_ID:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCounter:I

.field private mIsPersistScheduled:Z

.field private mIsPersistingStateValid:Z

.field private final mLock:Ljava/lang/Object;

.field private final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultsFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 13
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    const v0, -0x7fffffff

    iput v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "results"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "counter"

    invoke-static {v2, v4}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    goto :goto_1

    :cond_0
    const-string v4, "result"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "id"

    invoke-static {v2, v4}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    const-string v5, "status"

    invoke-static {v2, v5}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    const-string v5, "legacyStatus"

    invoke-static {v2, v5}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    const-string v5, "statusMessage"

    invoke-static {v2, v5}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v12, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    const/4 v11, 0x0

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V

    invoke-virtual {v5, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    nop

    :goto_1
    invoke-static {v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has two results"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "unexpected tag"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_6
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    :goto_4
    return-void
.end method

.method public static synthetic lambda$writeState$0(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V
    .locals 10

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v4, v6

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "results"

    invoke-interface {v6, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "counter"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_1

    const-string v8, "result"

    invoke-interface {v6, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "id"

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "status"

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v9, v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "legacyStatus"

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v9, v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string v8, "statusMessage"

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v9, v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    invoke-interface {v6, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v8, "result"

    invoke-interface {v6, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "results"

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    sget-object v3, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error writing results"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :goto_2
    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    monitor-exit v3

    return-void

    :cond_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    iget-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    new-instance v1, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addObserver(ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I
    .locals 6
    .param p2    # Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->getNewId()I

    move-result v2

    move p1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    move v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v3, v2, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    iget v4, v2, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    iget-object v5, v2, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    invoke-interface {p2, v3, v4, v5}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;->onResult(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNewId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 v1, v1, -0x1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onEventReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    move-object/from16 v10, p1

    const-string v0, "EventResultPersister.EXTRA_ID"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v2, 0x0

    iget-object v14, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v0, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    nop

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, v11, :cond_1

    iget-object v3, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;

    move-object v2, v3

    iget-object v3, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v15, v2

    if-eqz v15, :cond_3

    :try_start_1
    invoke-interface {v15, v9, v13, v12}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;->onResult(IILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v15

    goto :goto_3

    :cond_3
    iget-object v6, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v5, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    const/16 v16, 0x0

    move-object v1, v5

    move-object v2, v7

    move v3, v9

    move v4, v13

    move/from16 v17, v0

    move-object v0, v5

    move-object v5, v12

    move-object v8, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V

    invoke-virtual {v8, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    :goto_2
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method removeObserver(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
