.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;
.super Landroid/content/Loader;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintersLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader<",
        "Ljava/util/List<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PrintersLoader"


# instance fields
.field private mDiscoverySession:Landroid/print/PrinterDiscoverySession;

.field private final mPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 661
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 655
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    .line 662
    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    .line 649
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    return-object v0
.end method

.method private cancelInternal()Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 732
    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 734
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadInternal()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    .line 742
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 743
    .local v0, "printManager":Landroid/print/PrintManager;
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 744
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    new-instance v2, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)V

    invoke-virtual {v1, v2}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 752
    .end local v0    # "printManager":Landroid/print/PrintManager;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 753
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 649
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 669
    :cond_0
    return-void
.end method

.method protected onAbandon()V
    .locals 0

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 728
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->cancelInternal()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V

    .line 699
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 715
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 716
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 720
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onForceLoad()V

    .line 683
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onCancelLoad()Z

    .line 691
    return-void
.end method
