.class public abstract Landroid/media/MediaSessionService2;
.super Landroid/app/Service;
.source "MediaSessionService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSessionService2$MediaNotification;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaSessionService2"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.session"


# instance fields
.field private final mProvider:Landroid/media/update/MediaSessionService2Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaSessionService2;->createProvider()Landroid/media/update/MediaSessionService2Provider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaSessionService2;->mProvider:Landroid/media/update/MediaSessionService2Provider;

    return-void
.end method


# virtual methods
.method createProvider()Landroid/media/update/MediaSessionService2Provider;
    .locals 1

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaSessionService2(Landroid/media/MediaSessionService2;)Landroid/media/update/MediaSessionService2Provider;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Landroid/media/MediaSession2;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaSessionService2;->mProvider:Landroid/media/update/MediaSessionService2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSessionService2Provider;->getSession_impl()Landroid/media/MediaSession2;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaSessionService2;->mProvider:Landroid/media/update/MediaSessionService2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSessionService2Provider;->onBind_impl(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Landroid/media/MediaSessionService2;->mProvider:Landroid/media/update/MediaSessionService2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSessionService2Provider;->onCreate_impl()V

    return-void
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/MediaSession2;
.end method

.method public onUpdateNotification()Landroid/media/MediaSessionService2$MediaNotification;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaSessionService2;->mProvider:Landroid/media/update/MediaSessionService2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSessionService2Provider;->onUpdateNotification_impl()Landroid/media/MediaSessionService2$MediaNotification;

    move-result-object v0

    return-object v0
.end method
