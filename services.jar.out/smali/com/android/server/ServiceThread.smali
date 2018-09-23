.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
