.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mExtraObject:Ljava/lang/Object;

.field final mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

.field final mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field mItem:Ljava/lang/Object;

.field final mPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Landroid/support/v17/leanback/widget/Presenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .param p2, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 152
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 153
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    .line 154
    iput-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 155
    iput-object p4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 156
    return-void
.end method


# virtual methods
.method public final getExtraObject()Ljava/lang/Object;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mExtraObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    .local p1, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method public final getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public setExtraObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mExtraObject:Ljava/lang/Object;

    .line 145
    return-void
.end method
