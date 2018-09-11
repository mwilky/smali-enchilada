.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 192
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$700(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$500(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 196
    .local v0, "s":Landroidx/slice/Slice;
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$800(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceViewManager$SliceCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    .line 197
    return-void
.end method
