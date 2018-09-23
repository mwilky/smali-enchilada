.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_APP_LIST:Ljava/lang/String; = "apps_list"

.field private static final KEY_AVERAGY_USED:Ljava/lang/String; = "average_used"

.field private static final KEY_FREE:Ljava/lang/String; = "free"

.field private static final KEY_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final KEY_STATUS_HEADER:Ljava/lang/String; = "status_header"

.field private static final KEY_TOTAL_MEMORY:Ljava/lang/String; = "total_memory"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListPreference:Landroid/support/v7/preference/Preference;

.field private mAverageUsed:Landroid/support/v7/preference/Preference;

.field private mFree:Landroid/support/v7/preference/Preference;

.field private mPerformance:Landroid/support/v7/preference/Preference;

.field private mSummaryPref:Lcom/android/settings/SummaryPreference;

.field private mTotalMemory:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1206fc

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600ac

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SummaryPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const-string v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    const-string v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    const-string v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    const-string v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    const-string v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "transfer_stats"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "duration_index"

    iget v3, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v3, 0x7f120939

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUi()V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v7, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    double-to-long v10, v3

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v9

    double-to-long v10, v5

    invoke-static {v1, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    double-to-long v13, v7

    invoke-static {v1, v13, v14}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f03009b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v14}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v14

    if-ltz v14, :cond_0

    array-length v15, v13

    sub-int/2addr v15, v12

    if-ge v14, v15, :cond_0

    aget-object v15, v13, v14

    goto :goto_0

    :cond_0
    array-length v15, v13

    sub-int/2addr v15, v12

    aget-object v15, v13, v15

    :goto_0
    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    move-object/from16 v17, v1

    iget-object v1, v9, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v12, v9, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    add-double v18, v7, v3

    move-object/from16 v20, v2

    div-double v1, v3, v18

    double-to-float v1, v1

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const/4 v12, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide/from16 v21, v7

    sub-float v7, v18, v1

    invoke-virtual {v2, v1, v12, v7}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    double-to-long v7, v3

    move-wide/from16 v23, v3

    double-to-long v3, v5

    invoke-static {v7, v8, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/settings/applications/ProcessStatsSummary;->sDurationLabels:[I

    iget v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100024

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v12, v18

    const/16 v16, 0x1

    aput-object v2, v12, v16

    invoke-virtual {v7, v8, v3, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
