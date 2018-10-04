.class public final Landroid/media/MediaLibraryService2$MediaLibrarySession;
.super Landroid/media/MediaSession2;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaLibrarySession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;,
        Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaSession2;-><init>(Landroid/media/update/MediaSession2Provider;)V

    iput-object p1, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    return-void
.end method


# virtual methods
.method public notifyChildrenChanged(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifyChildrenChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifyChildrenChanged_impl(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifySearchResultChanged(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifySearchResultChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
