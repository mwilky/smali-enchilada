.class Landroid/app/ActivityView$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityView$TaskStackListenerImpl;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method

.method private getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$1000(Landroid/app/ActivityView;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    iget v5, v4, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-eq v5, v0, :cond_0

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$StateCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$StackInfo;)V

    :cond_0
    return-void
.end method
