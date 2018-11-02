.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;
.super Lcom/android/settings/applications/manageapplications/ManageApplications;
.source "DisplaySizeAdaptionApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps$1;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
