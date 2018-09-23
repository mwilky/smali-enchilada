.class public Lcom/android/settings/support/SupportDashboardActivity;
.super Landroid/app/Activity;
.source "SupportDashboardActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/support/SupportDashboardActivity$1;

    invoke-direct {v0}, Lcom/android/settings/support/SupportDashboardActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/support/SupportDashboardActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/overlay/SupportFeatureProvider;->startSupportV2(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDashboardActivity;->finish()V

    :cond_0
    return-void
.end method
