.class Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;
.super Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    .line 151
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 154
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;"
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 159
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;"
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    return-void
.end method
