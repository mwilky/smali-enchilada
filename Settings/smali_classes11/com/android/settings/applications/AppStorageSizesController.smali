.class public Lcom/android/settings/applications/AppStorageSizesController;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSizesController$Builder;
    }
.end annotation


# instance fields
.field private final mAppSize:Landroid/support/v7/preference/Preference;

.field private final mCacheSize:Landroid/support/v7/preference/Preference;

.field private mCachedCleared:Z

.field private final mComputing:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mDataCleared:Z

.field private final mDataSize:Landroid/support/v7/preference/Preference;

.field private final mError:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastResultFailed:Z

.field private mLastTotalSize:J

.field private final mTotalSize:Landroid/support/v7/preference/Preference;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V
    .locals 2
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    iput p5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    iput p6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V

    return-void
.end method

.method private getSizeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    return-object v0
.end method

.method public setCacheCleared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    return-void
.end method

.method public setDataCleared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    return-void
.end method

.method public setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    return-void
.end method

.method public updateUi(Landroid/content/Context;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v7

    sub-long/2addr v5, v7

    :goto_1
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_3

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_4

    iput-wide v5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v3

    nop

    :cond_6
    :goto_2
    move-wide v2, v3

    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_7

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    add-long v7, v0, v5

    add-long/2addr v7, v2

    iget-wide v9, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_8

    iput-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v7, v8}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method
