.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    .line 201
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 7
    .param p1, "s"    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$900(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 205
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 206
    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v2, v0, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;ILjava/lang/Throwable;)V

    .line 207
    return-void

    .line 209
    :cond_0
    new-instance v2, Landroidx/slice/SliceStructure;

    invoke-direct {v2, p1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    .line 210
    .local v2, "structure":Landroidx/slice/SliceStructure;
    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v3}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$400(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceStructure;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;ILjava/lang/Throwable;)V

    .line 212
    return-void

    .line 214
    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v3}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1100(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v3

    .line 215
    .local v3, "metaData":Landroidx/slice/SliceMetadata;
    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 216
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$900(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->findItem(Landroidx/slice/Slice;Landroid/net/Uri;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 217
    .local v0, "item":Landroidx/slice/SliceItem;
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 219
    :try_start_0
    iget-object v5, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v5}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1200(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v6}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1300(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    nop

    .line 228
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v4, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$902(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 229
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v4, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1202(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;)Landroid/content/Context;

    .line 230
    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v4, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1302(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Intent;)Landroid/content/Intent;

    .end local v0    # "item":Landroidx/slice/SliceItem;
    .end local v2    # "structure":Landroidx/slice/SliceStructure;
    .end local v3    # "metaData":Landroidx/slice/SliceMetadata;
    goto :goto_0

    .line 220
    .restart local v0    # "item":Landroidx/slice/SliceItem;
    .restart local v2    # "structure":Landroidx/slice/SliceStructure;
    .restart local v3    # "metaData":Landroidx/slice/SliceMetadata;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v5, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v5, v4, v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;ILjava/lang/Throwable;)V

    .line 222
    return-void

    .line 225
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v4, v5}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;ILjava/lang/Throwable;)V

    .line 226
    return-void

    .line 233
    .end local v0    # "item":Landroidx/slice/SliceItem;
    .end local v2    # "structure":Landroidx/slice/SliceStructure;
    .end local v3    # "metaData":Landroidx/slice/SliceMetadata;
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$1400(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V

    .line 234
    return-void
.end method
