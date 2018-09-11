.class public Landroid/support/v17/leanback/app/VideoFragmentGlueHost;
.super Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.source "VideoFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/VideoFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/VideoFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/VideoFragment;

    .line 36
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 37
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoFragment;

    .line 38
    return-void
.end method


# virtual methods
.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 47
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/VideoFragment;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    return-void
.end method
