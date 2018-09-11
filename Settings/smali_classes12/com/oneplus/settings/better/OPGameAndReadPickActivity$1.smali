.class Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;
.super Landroid/os/Handler;
.source "OPGameAndReadPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    .line 46
    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$100(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 49
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setData(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$000(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$300(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setAppType(I)V

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "emptyView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$200(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->access$400(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    .end local v0    # "emptyView":Landroid/view/View;
    :cond_0
    return-void
.end method
