.class public Lcom/android/settings/slices/SlicesFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SlicesFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/slices/SlicesFeatureProvider;


# instance fields
.field private mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

.field private mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/slices/SliceDataConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/SliceDataConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    return-object v0
.end method

.method public getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/slices/SlicesIndexer;

    invoke-direct {v0, p1}, Lcom/android/settings/slices/SlicesIndexer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    return-object v0
.end method

.method public indexSliceData(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    return-void
.end method

.method public indexSliceDataAsync(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
