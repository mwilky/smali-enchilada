.class Lcom/oneplus/screenshot/longshot/state/MainState$3;
.super Ljava/lang/Object;
.source "MainState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/MainState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/MainState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRealDisplayHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Longshot.MainState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnterRunnable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " STOP_BY_USER:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " onePageBitmapHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$100(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v1

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/MainState$3;->this$0:Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$300(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/state/MainState;->access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    :goto_0
    return-void
.end method
