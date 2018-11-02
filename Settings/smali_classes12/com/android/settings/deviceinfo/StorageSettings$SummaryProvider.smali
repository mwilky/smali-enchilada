.class Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v1, v0}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 10

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    long-to-double v7, v7

    div-double v7, v2, v7

    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v8, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x7f121127

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->updateSummary()V

    :cond_0
    return-void
.end method
