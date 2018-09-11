.class Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "OPToolsSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/others/OPToolsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 339
    iput-object p2, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/others/OPToolsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "x2"    # Lcom/oneplus/settings/others/OPToolsSettings$1;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 350
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120b37

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120cd1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 355
    :goto_0
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;->updateSummary()V

    .line 347
    :cond_0
    return-void
.end method
