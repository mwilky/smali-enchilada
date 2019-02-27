.class public Landroid/content/pm/dex/ArtManager;
.super Ljava/lang/Object;
.source "ArtManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;,
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;,
        Landroid/content/pm/dex/ArtManager$ProfileType;
    }
.end annotation


# static fields
.field public static final PROFILE_APPS:I = 0x0

.field public static final PROFILE_BOOT_IMAGE:I = 0x1

.field public static final SNAPSHOT_FAILED_CODE_PATH_NOT_FOUND:I = 0x1

.field public static final SNAPSHOT_FAILED_INTERNAL_ERROR:I = 0x2

.field public static final SNAPSHOT_FAILED_PACKAGE_NOT_FOUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArtManager"


# instance fields
.field private final mArtManager:Landroid/content/pm/dex/IArtManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/dex/IArtManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/content/pm/dex/IArtManager;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    .line 78
    return-void
.end method

.method public static getCurrentProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "splitName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1, p0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 200
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "splitName"    # Ljava/lang/String;

    .line 190
    if-nez p0, :cond_0

    const-string/jumbo v0, "primary.prof"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".split.prof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "profileName"    # Ljava/lang/String;

    .line 212
    invoke-static {p0}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 213
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".snapshot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public isRuntimeProfilingEnabled(I)Z
    .locals 2
    .param p1, "profileType"    # I

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;)V
    .locals 8
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    .line 111
    const-string v0, "ArtManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v6, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    const/4 v0, 0x0

    invoke-direct {v6, p5, p4, v0}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager$1;)V

    .line 116
    .local v6, "delegate":Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 116
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
