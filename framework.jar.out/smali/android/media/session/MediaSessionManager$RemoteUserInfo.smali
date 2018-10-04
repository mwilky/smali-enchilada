.class public final Landroid/media/session/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field private final mCallerBinder:Landroid/os/IBinder;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;IILandroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    iput-object p4, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    :cond_3
    :goto_0
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
