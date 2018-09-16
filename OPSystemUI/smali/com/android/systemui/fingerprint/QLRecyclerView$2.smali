.class Lcom/android/systemui/fingerprint/QLRecyclerView$2;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 102
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QLRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckScrollNext mBarPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$600(Lcom/android/systemui/fingerprint/QLRecyclerView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$600(Lcom/android/systemui/fingerprint/QLRecyclerView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$320(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$700(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mDataset:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$800(Lcom/android/systemui/fingerprint/QLRecyclerView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method
