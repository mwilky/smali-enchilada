.class public Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallEventReceiver.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static addObserver(Landroid/content/Context;ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
    .param p2, "observer"    # Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->addObserver(ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I

    move-result v0

    return v0
.end method

.method static getNewId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->getNewId()I

    move-result v0

    return v0
.end method

.method private static getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    .line 40
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/TemporaryFileManager;->getUninstallStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    return-object v0

    .line 42
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static removeObserver(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I

    .line 74
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->removeObserver(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 49
    invoke-static {p1}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->onEventReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
