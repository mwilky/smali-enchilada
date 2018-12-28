.class Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "OPButtonsAndGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120a95

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f1200ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120373

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const v7, 0x7f120783

    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f120c31

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->updateSummary()V

    :cond_0
    return-void
.end method
