.class public final Landroid/media/session/MediaSession$Token;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/media/session/ISessionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/session/MediaSession$Token$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$Token$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/session/ISessionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaSession$Token;

    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v3}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v4}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method getBinder()Landroid/media/session/ISessionController;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v3}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
