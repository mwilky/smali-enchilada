.class public Lcom/android/internal/backup/LocalTransportService;
.super Landroid/app/Service;
.source "LocalTransportService.java"


# static fields
.field private static sTransport:Lcom/android/internal/backup/LocalTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransport;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportService;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/backup/LocalTransportParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    new-instance v1, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;Lcom/android/internal/backup/LocalTransportParameters;)V

    sput-object v1, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    :cond_0
    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransport;->getParameters()Lcom/android/internal/backup/LocalTransportParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/internal/backup/LocalTransportService;->sTransport:Lcom/android/internal/backup/LocalTransport;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransport;->getParameters()Lcom/android/internal/backup/LocalTransportParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->stop()V

    return-void
.end method
