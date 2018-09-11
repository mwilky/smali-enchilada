.class Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;
    .param p2, "descriptionPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 337
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 340
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;"
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 342
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 345
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 347
    return-void
.end method
