.class public Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;
.super Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionHeaderHolder"
.end annotation


# instance fields
.field public final expandIndicator:Landroid/widget/ImageView;

.field public final icons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->expandIndicator:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setAllowToExpand(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->expandIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->expandIndicator:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
