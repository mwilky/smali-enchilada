.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$2400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->access$2100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v4, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v5, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mDx:F

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-static {v6, v1, v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method
