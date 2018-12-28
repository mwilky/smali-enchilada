.class public Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppPreloadHitRate"
.end annotation


# instance fields
.field public mAppBootCount:I

.field public mApppPreloadCount:I

.field public mApppPreloadHitCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;->mAppBootCount:I

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;->mApppPreloadCount:I

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;->mApppPreloadHitCount:I

    return-void
.end method
