.class public abstract Landroid/printservice/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static sIdCounter:I


# instance fields
.field private final mId:I

.field private mIsDestroyed:Z

.field private mIsDiscoveryStarted:Z

.field private mLastSentPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    sget v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    iput v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    return-void
.end method

.method private sendOutOfDiscoveryPeriodPrinterChanges()V
    .locals 7

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-nez v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    :try_start_0
    iget-object v2, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "PrinterDiscoverySession"

    const-string v4, "Error sending added printers"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v2, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    :cond_6
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    :try_start_1
    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v4, "PrinterDiscoverySession"

    const-string v5, "Error sending removed printers"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_3
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    return-void

    :cond_a
    :goto_4
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final addPrinters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Not adding printers - session destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-nez v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "PrinterDiscoverySession"

    const-string v4, "Error sending added printers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v0, :cond_7

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_2
    if-ge v1, v0, :cond_9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method destroy()V
    .locals 1

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onDestroy()V

    :cond_0
    return-void
.end method

.method getId()I
    .locals 1

    iget v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    return v0
.end method

.method public final getPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getTrackedPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final isDestroyed()Z
    .locals 1

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V
    .locals 0

    return-void
.end method

.method public abstract onStartPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onStopPrinterDiscovery()V
.end method

.method public abstract onStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onValidatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public final removePrinters(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Not removing printers - session destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    iget-object v4, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "PrinterDiscoverySession"

    const-string v4, "Error sending removed printers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    iget-object v3, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/printservice/CustomPrinterIconCallback;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v0, p1, v1}, Landroid/printservice/CustomPrinterIconCallback;-><init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Landroid/printservice/PrinterDiscoverySession;->onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V

    :cond_0
    return-void
.end method

.method setObserver(Landroid/printservice/IPrintServiceClient;)V
    .locals 3

    iput-object p1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method startPrinterDiscovery(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    invoke-direct {p0}, Landroid/printservice/PrinterDiscoverySession;->sendOutOfDiscoveryPeriodPrinterChanges()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterDiscovery(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterStateTracking(Landroid/print/PrinterId;)V

    :cond_0
    return-void
.end method

.method stopPrinterDiscovery()V
    .locals 1

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterDiscovery()V

    :cond_0
    return-void
.end method

.method stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterStateTracking(Landroid/print/PrinterId;)V

    :cond_0
    return-void
.end method

.method validatePrinters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onValidatePrinters(Ljava/util/List;)V

    :cond_0
    return-void
.end method
