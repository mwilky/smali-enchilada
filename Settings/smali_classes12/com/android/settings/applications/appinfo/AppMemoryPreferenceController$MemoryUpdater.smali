.class Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "AppMemoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    new-instance v4, Lcom/android/settings/applications/ProcStatsData;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3, v4}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)Lcom/android/settings/applications/ProcStatsData;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v3

    sget-object v4, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {v4}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-virtual {v6}, Lcom/android/settings/applications/ProcStatsEntry;->getUid()I

    move-result v7

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    return-object v4

    :cond_3
    goto :goto_1

    :cond_4
    goto :goto_0

    :cond_5
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getRunWeight()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getBgWeight()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->getWeightToRam()D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v5}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12093b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v7}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v7

    double-to-long v8, v3

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1209c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
