.class Lcom/oneplus/settings/others/OPToolsSettings$2;
.super Ljava/lang/Object;
.source "OPToolsSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/others/OPToolsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 363
    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/others/OPToolsSettings$1;)V

    return-object v0
.end method
