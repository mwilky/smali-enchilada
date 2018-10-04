.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

.field private mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettings:Landroid/view/textclassifier/TextClassificationConstants;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

.field private mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;-><init>(Landroid/view/textclassifier/TextClassificationManager;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    new-instance v0, Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;-><init>(Landroid/view/textclassifier/TextClassificationManager;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Landroid/view/textclassifier/TextClassificationManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->invalidate()V

    return-void
.end method

.method private getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 5

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    goto :goto_0

    :cond_0
    const-string v1, "TextClassificationManager"

    const-string v2, "Local TextClassifier disabled"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSettings()Landroid/view/textclassifier/TextClassificationConstants;
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    if-nez v1, :cond_0

    nop

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "text_classifier_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;
    .locals 3

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    return-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "text_classifier_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    return-object v1
.end method

.method private getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 4

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->isSystemTextClassifierEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/textclassifier/SystemTextClassifier;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string v1, "TextClassificationManager"

    const-string v2, "Initialized SystemTextClassifier"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TextClassificationManager"

    const-string v3, "Could not initialize SystemTextClassifier"

    invoke-static {v2, v3, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    :cond_1
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private invalidate()V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSystemTextClassifierEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Landroid/view/textclassifier/TextClassificationManager;Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    return-object v0
.end method


# virtual methods
.method public createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassificationSessionFactory;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    const-string v1, "Session Factory should never return null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    invoke-direct {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->isSystemTextClassifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

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

.method public getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setTextClassificationSessionFactory(Landroid/view/textclassifier/TextClassificationSessionFactory;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
