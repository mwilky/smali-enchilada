.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;
.super Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackControlStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method private constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
    .param p2, "x1"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;

    .line 235
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    return-void
.end method


# virtual methods
.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 1
    .param p1, "glue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 239
    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-static {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->access$300(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    .line 242
    :cond_0
    return-void
.end method
