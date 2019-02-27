.class public final Landroid/print/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;,
        Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;,
        Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate;,
        Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;,
        Landroid/print/PrintManager$PrintServicesChangeListener;,
        Landroid/print/PrintManager$PrintJobStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_PRINT_DIALOG:Ljava/lang/String; = "android.print.PRINT_DIALOG"

.field public static final ALL_SERVICES:I = 0x3

.field public static final APP_ID_ANY:I = -0x2

.field private static final DEBUG:Z = false

.field public static final DISABLED_SERVICES:I = 0x2

.field public static final ENABLED_SERVICES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PRINT_DIALOG_INTENT:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

.field public static final EXTRA_PRINT_DOCUMENT_ADAPTER:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

.field public static final EXTRA_PRINT_JOB:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_JOB"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintManager"

.field private static final MSG_NOTIFY_PRINT_JOB_STATE_CHANGED:I = 0x1

.field public static final PRINT_SPOOLER_PACKAGE_NAME:Ljava/lang/String; = "com.android.printspooler"


# instance fields
.field private final mAppId:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobStateChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            "Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServicesChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrintManager$PrintServicesChangeListener;",
            "Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/print/IPrintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iput p3, p0, Landroid/print/PrintManager;->mUserId:I

    iput p4, p0, Landroid/print/PrintManager;->mAppId:I

    new-instance v0, Landroid/print/PrintManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/print/PrintManager$1;-><init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    :cond_1
    new-instance v0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    iget-object v1, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2, v3}, Landroid/print/IPrintManager;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    iget-object v1, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_1

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    :cond_2
    new-instance v0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    invoke-direct {v0, p1, p2}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    iget-object v1, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_1

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    :cond_2
    new-instance v0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    invoke-direct {v0, p1, p2}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    iget-object v1, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method cancelPrintJob(Landroid/print/PrintJobId;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mAppId:I

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/print/IPrintManager;->cancelPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/print/PrinterDiscoverySession;

    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/print/PrinterDiscoverySession;-><init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V

    return-object v0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 2

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/print/IPrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V

    return-object v0
.end method

.method public getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v2, "Feature android.software.print not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v2, v3}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/print/PrintJob;

    invoke-direct {v1, v0, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    nop

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mAppId:I

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrintJobs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJob;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mAppId:I

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/print/IPrintManager;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    new-instance v4, Landroid/print/PrintJob;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    invoke-direct {v4, v5, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/print/IPrintManager;->getPrintServiceRecommendations(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrintServices(I)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/print/IPrintManager;->getPrintServices(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    .locals 11

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v2, "Feature android.software.print not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0, p2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;-><init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V

    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Landroid/print/PrintManager;->mAppId:I

    iget v8, p0, Landroid/print/PrintManager;->mUserId:I

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Landroid/print/IPrintManager;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    const-string v3, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    new-instance v5, Landroid/print/PrintJob;

    invoke-direct {v5, v2, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "PrintManager"

    const-string v7, "Couldn\'t start print job config activity."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    nop

    return-object v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "documentAdapter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printJobName cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can print only from an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->destroy()V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager;->mPrintServiceRecommendationsChangeListeners:Ljava/util/Map;

    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->destroy()V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager;->mPrintServicesChangeListeners:Ljava/util/Map;

    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->destroy()V

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/print/IPrintManager;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PrintManager"

    const-string v3, "Error removing print services change listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method restartPrintJob(Landroid/print/PrintJobId;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mAppId:I

    iget v2, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/print/IPrintManager;->restartPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    const-string v0, "PrintManager"

    const-string v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v1, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/print/IPrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error enabling or disabling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
