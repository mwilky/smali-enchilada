.class public Lcom/android/systemui/volume/MediaRouterWrapper;
.super Ljava/lang/Object;
.source "MediaRouterWrapper.java"


# instance fields
.field private final mRouter:Landroid/support/v7/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroid/support/v7/media/MediaRouter;

    return-void
.end method


# virtual methods
.method public removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    return-void
.end method
