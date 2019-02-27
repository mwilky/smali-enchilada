.class Lcom/android/internal/app/ResolverComparator$1;
.super Landroid/os/Handler;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v4}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    nop

    :goto_0
    if-ge v1, v3, :cond_1

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v6}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v6}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v6, v5}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->access$300(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/app/ResolverComparator;->access$202(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    :cond_2
    goto :goto_1

    :cond_3
    const-string v1, "ResolverComparator"

    const-string v3, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_4
    const-string v0, "ResolverComparator"

    const-string v1, "Receiving null prediction results."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
