.class Lcom/android/server/am/Uterus$3;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v1}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "Embryo_Uterus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trim size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v4}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Embryo_Uterus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detect supervisors wo embryo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v4}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/android/server/am/Uterus;->access$700()I

    move-result v3

    if-gt v2, v3, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v1, "Embryo_Uterus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> trim start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;

    invoke-direct {v1}, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    iget-object v5, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v5}, Lcom/android/server/am/Uterus;->access$800(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v1, v5

    :try_start_2
    invoke-virtual {v4, v1}, Lcom/android/server/am/EmbryoSupervisor;->setRank(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move v1, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move v1, v6

    goto/16 :goto_4

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v2, Lcom/android/server/am/EmbryoSupervisor$RankComparator;

    invoke-direct {v2}, Lcom/android/server/am/EmbryoSupervisor$RankComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    const-string v4, "Embryo_Uterus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rank:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getRank()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/android/server/am/Uterus;->access$700()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/EmbryoSupervisor;

    iget-object v5, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v5}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/Uterus$3;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v6}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-enter v4

    :try_start_5
    const-string v5, "Embryo_Uterus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/Embryo;->destroy()V

    :cond_5
    monitor-exit v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :catchall_2
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    :cond_6
    const-string v3, "Embryo_Uterus"

    const-string v4, "<<< trim finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception v3

    :goto_4
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    :catchall_4
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2
.end method
