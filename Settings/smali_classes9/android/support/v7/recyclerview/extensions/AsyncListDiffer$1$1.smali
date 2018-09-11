.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    .line 221
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 245
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 248
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 250
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 251
    const/4 v2, 0x1

    return v2

    .line 257
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 234
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 237
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 240
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 263
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 266
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 272
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getNewListSize()I
    .locals 1

    .line 229
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 224
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
