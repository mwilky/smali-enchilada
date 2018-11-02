.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;-><init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$input:Ljava/io/InputStream;

.field final synthetic val$listener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$input:Ljava/io/InputStream;

    iput-object p4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$listener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$input:Ljava/io/InputStream;

    const-string v2, "UTF-8"

    new-instance v3, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1$1;

    invoke-direct {v3, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1$1;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/SliceUtils;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    new-instance v2, Landroidx/slice/SliceStructure;

    invoke-direct {v2, v0}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$402(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroidx/slice/SliceStructure;)Landroidx/slice/SliceStructure;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$502(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$600(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->val$listener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method
