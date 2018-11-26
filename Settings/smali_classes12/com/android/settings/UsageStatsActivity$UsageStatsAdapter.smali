.class Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# static fields
.field private static final _DISPLAY_ORDER_APP_NAME:I = 0x2

.field private static final _DISPLAY_ORDER_LAST_TIME_USED:I = 0x1

.field private static final _DISPLAY_ORDER_USAGE_TIME:I


# instance fields
.field private mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

.field private final mAppLabelMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

.field private final mPackageStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/settings/UsageStatsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity;)V
    .locals 11

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    new-instance v1, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    nop

    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$000(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x4

    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    :try_start_0
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    if-nez v9, :cond_1

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v6}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v5}, Lcom/android/settings/UsageStatsActivity$AppNameComparator;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    return-void
.end method

.method private sortList()V
    .locals 2

    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity;->access$200(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/UsageStatsActivity$AppViewHolder;-><init>()V

    const v1, 0x7f0a03f3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    const v1, 0x7f0a02ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    const v1, 0x7f0a05bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v2, "UsageStatsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No usage stats info for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p2
.end method

.method sortList(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    return-void
.end method
