.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

.field mControlsContainer:Landroid/view/View;

.field mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

.field mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v17/leanback/widget/Presenter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/ControlBarPresenter;
    .param p2, "rootView"    # Landroid/view/View;

    .line 79
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    .line 80
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    .line 81
    sget v0, Landroid/support/v17/leanback/R$id;->controls_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    .line 82
    sget v0, Landroid/support/v17/leanback/R$id;->control_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 83
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-boolean v1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBar;->setDefaultFocusToMiddle(Z)V

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    new-instance v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;Landroid/support/v17/leanback/widget/ControlBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBar;->setOnChildFocusedListener(Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;)V

    .line 103
    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;Landroid/support/v17/leanback/widget/ControlBarPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 119
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find control_bar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;
    .param p3, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 153
    .local v0, "vh":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 155
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {p3, v2}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    .line 156
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    move-object v2, v0

    .line 159
    .local v2, "itemViewHolder":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    new-instance v3, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;

    invoke-direct {v3, p0, p1, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;ILandroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p3, v0, v3}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    .line 170
    .end local v2    # "itemViewHolder":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    :cond_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ControlBar;->addView(Landroid/view/View;)V

    .line 173
    :cond_1
    invoke-virtual {p3, v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 147
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    .line 148
    return-void
.end method

.method getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numControls"    # I

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method showControls(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 6
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 127
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 128
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    .line 130
    .local v2, "adapterSize":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ControlBar;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, "focusedView":Landroid/view/View;
    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 132
    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-lt v4, v2, :cond_1

    .line 133
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 135
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_2

    .line 136
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v5, v4}, Landroid/support/v17/leanback/widget/ControlBar;->removeViewAt(I)V

    .line 135
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 138
    .end local v4    # "i":I
    :cond_2
    nop

    .local v1, "position":I
    :goto_2
    if-ge v1, v2, :cond_3

    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    .line 140
    invoke-direct {p0, v1, v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    .end local v1    # "position":I
    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 143
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ControlBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getChildMarginFromCenter(Landroid/content/Context;I)I

    move-result v4

    .line 142
    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ControlBar;->setChildMarginFromCenter(I)V

    .line 144
    return-void
.end method
