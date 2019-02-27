.class public Landroid/media/MediaBrowser2;
.super Landroid/media/MediaController2;
.source "MediaBrowser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaBrowser2$BrowserCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaBrowser2Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaBrowser2$BrowserCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;-><init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V

    invoke-virtual {p0}, Landroid/media/MediaBrowser2;->getProvider()Landroid/media/update/MediaController2Provider;

    move-result-object v0

    check-cast v0, Landroid/media/update/MediaBrowser2Provider;

    iput-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    return-void
.end method


# virtual methods
.method createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaBrowser2Provider;
    .locals 6

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v5, p4

    check-cast v5, Landroid/media/MediaBrowser2$BrowserCallback;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/update/StaticProvider;->createMediaBrowser2(Landroid/content/Context;Landroid/media/MediaBrowser2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaBrowser2$BrowserCallback;)Landroid/media/update/MediaBrowser2Provider;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaBrowser2;->createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaBrowser2Provider;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaBrowser2Provider;->getChildren_impl(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->getItem_impl(Ljava/lang/String;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->getLibraryRoot_impl(Landroid/os/Bundle;)V

    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaBrowser2Provider;->getSearchResult_impl(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaBrowser2Provider;->search_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaBrowser2Provider;->subscribe_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->unsubscribe_impl(Ljava/lang/String;)V

    return-void
.end method
