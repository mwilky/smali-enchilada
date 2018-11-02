.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;
.super Landroid/os/Handler;
.source "OPQuickLaunchListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setAppList(Ljava/util/List;)V

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
