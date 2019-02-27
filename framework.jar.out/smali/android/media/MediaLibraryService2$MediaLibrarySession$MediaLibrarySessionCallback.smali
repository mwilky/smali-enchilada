.class public Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
.super Landroid/media/MediaSession2$SessionCallback;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLibrarySessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaSession2$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildren(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetItem(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Landroid/media/MediaItem2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetLibraryRoot(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)Landroid/media/MediaLibraryService2$LibraryRoot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetSearchResult(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSearch(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribe(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
