.class Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;,
        Landroid/support/v17/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;,
        Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionPresenter;,
        Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;
    }
.end annotation


# instance fields
.field private final mOneLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private final mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

.field private final mTwoLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSelector;-><init>()V

    .line 27
    new-instance v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 28
    new-instance v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    .line 110
    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    .line 35
    .local v0, "action":Landroid/support/v17/leanback/widget/Action;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mOneLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v1

    .line 38
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mTwoLineActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v1
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;->mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method
