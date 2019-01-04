.class public Lcom/android/settings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/settings/UsageStatsActivity$AppViewHolder;,
        Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;,
        Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/settings/UsageStatsActivity$AppNameComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageStatsActivity"

.field private static final localLOGV:Z = false


# instance fields
.field private mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d02cb

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->setContentView(I)V

    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    const v0, 0x7f0a05ad

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f0a041a

    invoke-virtual {p0, v1}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
