.class Lcom/android/server/am/Uterus$5;
.super Lcom/oneplus/embryo/IEmbryoController$Stub;
.source "Uterus.java"


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
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .line 796
    iput-object p1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Lcom/oneplus/embryo/IEmbryoController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreloadStatus(IZ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "complete"    # Z

    .line 799
    const-string v0, "Embryo_Uterus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get preload status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "newbie":Lcom/android/server/am/Embryo;
    iget-object v1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v1}, Lcom/android/server/am/Uterus;->access$1300(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v2}, Lcom/android/server/am/Uterus;->access$1300(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Embryo;

    move-object v0, v2

    .line 803
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 804
    if-nez v0, :cond_0

    .line 805
    return-void

    .line 807
    :cond_0
    if-nez p2, :cond_1

    .line 808
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V

    .line 809
    return-void

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    .line 813
    .local v2, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v2, :cond_2

    .line 814
    return-void

    .line 816
    :cond_2
    monitor-enter v2

    .line 817
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/android/server/am/EmbryoSupervisor;->attach(Lcom/android/server/am/Embryo;)V

    .line 818
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 819
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 821
    iget-object v1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v1}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 822
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 823
    iget-object v3, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->access$600(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_3
    monitor-exit v1

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 819
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 803
    .end local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method
