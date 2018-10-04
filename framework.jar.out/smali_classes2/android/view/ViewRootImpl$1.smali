.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v2

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v5, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
