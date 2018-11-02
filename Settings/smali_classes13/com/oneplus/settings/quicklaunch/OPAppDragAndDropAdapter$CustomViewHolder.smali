.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OPAppDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;Lcom/oneplus/settings/quicklaunch/OPAppDragCell;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    invoke-virtual {v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->getDragHandle()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getAppDragCell()Lcom/oneplus/settings/quicklaunch/OPAppDragCell;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->access$000(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->access$100(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
