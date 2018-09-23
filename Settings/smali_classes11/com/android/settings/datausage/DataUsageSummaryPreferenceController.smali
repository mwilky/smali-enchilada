.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final PETA:J = 0x38d7ea4c68000L

.field private static final RELATIVE_SIZE_LARGE:F = 1.5625f

.field private static final RELATIVE_SIZE_SMALL:F = 0.64f

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCycleEnd:J

.field private mCycleStart:J

.field private mDataBarSize:J

.field private final mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private final mDataUsageTemplate:I

.field private mDataplanCount:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private final mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private final mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mHasMobileData:Z

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mManageSubscriptionIntent:Landroid/content/Intent;

.field private final mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSnapshotTime:J

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 4

    const-string v0, "status_header"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v2, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v2}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1203b3

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1213d6

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    goto :goto_1

    :cond_2
    const v2, 0x7f12062e

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/net/DataUsageController;Lcom/android/settings/datausage/DataUsageInfoController;Landroid/net/NetworkTemplate;Lcom/android/settingslib/NetworkPolicyEditor;IZLandroid/telephony/SubscriptionManager;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/widget/EntityHeaderController;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "status_header"

    invoke-direct {p0, p8, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iput p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    iput-boolean p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iput-object p10, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iput-object p11, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-void
.end method

.method public static getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionPlan;

    nop

    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->saneSize(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return-object v2
.end method

.method private refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    iput-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v5, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    invoke-static {v6, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    iget-object v1, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->createManageSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " plans, dflt sub-id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", intent "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static saneSize(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unlimited(J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method setCarrierValues(Ljava/lang/String;JJLandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iput-object p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    return-void
.end method

.method setPlanValues(IJJ)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    iput-wide p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 12

    move-object v8, p1

    check-cast v8, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v9

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    invoke-virtual {v8, v7, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    :cond_0
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-lez v0, :cond_1

    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v2, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v2, v10

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    :goto_0
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_4

    invoke-virtual {v8, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v6}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v8, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    :goto_1
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v9

    iget-object v0, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v8, v6, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    iget-wide v1, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    invoke-virtual {v8, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    iget-wide v1, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void
.end method
