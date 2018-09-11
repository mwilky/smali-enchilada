.class public Lcom/android/settings/dashboard/DashboardAdapter$SearchLayoutHolder;
.super Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchLayoutHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .line 471
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    .line 472
    return-void
.end method
