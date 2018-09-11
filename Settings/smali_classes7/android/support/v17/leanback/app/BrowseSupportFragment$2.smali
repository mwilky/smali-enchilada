.class Landroid/support/v17/leanback/app/BrowseSupportFragment$2;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateWrapperPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

.field final synthetic val$adapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field final synthetic val$allPresenters:[Landroid/support/v17/leanback/widget/Presenter;

.field final synthetic val$invisibleRowPresenter:Landroid/support/v17/leanback/widget/Presenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/PresenterSelector;Landroid/support/v17/leanback/widget/Presenter;[Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 806
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$adapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    iput-object p3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$invisibleRowPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object p4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$allPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .line 809
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/Row;

    .line 810
    .local v0, "row":Landroid/support/v17/leanback/widget/Row;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$adapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    return-object v1

    .line 813
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$invisibleRowPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v1
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 819
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->val$allPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method
