.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;
.super Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;
.source "PlaybackTransportRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailLoaded(Landroid/graphics/Bitmap;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v1, v0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
