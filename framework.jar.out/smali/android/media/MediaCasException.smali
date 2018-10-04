.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/media/MediaCasException$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaCasException$DeniedByServerException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/media/MediaCasException$ResourceBusyException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/media/MediaCasException$NotProvisionedException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
