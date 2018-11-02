.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "AppDataUsagePreference.java"


# instance fields
.field private mDetail:Lcom/android/settingslib/net/UidDetail;

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    iget-boolean v0, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const v0, 0x7f12049c

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p2, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAppInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v1, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-wide v1, v1, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
