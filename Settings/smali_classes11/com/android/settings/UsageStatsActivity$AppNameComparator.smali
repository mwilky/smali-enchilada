.class public Lcom/android/settings/UsageStatsActivity$AppNameComparator;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppLabelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p1

    return p1
.end method
