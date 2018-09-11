.class Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ItemBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 159
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public onItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemMoved(II)V

    .line 188
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 167
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeChanged(II)V

    .line 168
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeInserted(II)V

    .line 178
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 182
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeRemoved(II)V

    .line 183
    return-void
.end method
