.class Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;
.super Landroid/os/Handler;
.source "OPGestureAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/gestures/OPGestureAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$000(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$100(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$300(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$100(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAllAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$000(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$500(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->access$400(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
