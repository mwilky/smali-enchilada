.class public Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;
.super Lcom/android/settings/applications/manageapplications/ManageApplications;
.source "BgOptimizeApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;-><init>()V

    return-void
.end method
