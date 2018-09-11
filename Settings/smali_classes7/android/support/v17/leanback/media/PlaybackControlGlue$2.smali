.class Landroid/support/v17/leanback/media/PlaybackControlGlue$2;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackControlGlue;
    .param p2, "descriptionPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 295
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackControlGlue;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 298
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackControlGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 300
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 303
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 305
    return-void
.end method
