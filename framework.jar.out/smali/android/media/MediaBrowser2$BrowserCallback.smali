.class public Landroid/media/MediaBrowser2$BrowserCallback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaBrowser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaBrowser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowserCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenChanged(Landroid/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onGetChildrenDone(Landroid/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaBrowser2;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onGetItemDone(Landroid/media/MediaBrowser2;Ljava/lang/String;Landroid/media/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onGetLibraryRootDone(Landroid/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onGetSearchResultDone(Landroid/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaBrowser2;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onSearchResultChanged(Landroid/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
