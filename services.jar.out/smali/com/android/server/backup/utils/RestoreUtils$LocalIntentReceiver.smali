.class Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/utils/RestoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mLock:Ljava/lang/Object;

.field private mResult:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
