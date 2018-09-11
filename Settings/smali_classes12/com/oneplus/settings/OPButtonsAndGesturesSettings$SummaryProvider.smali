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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "x2"    # Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120a92

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->updateSummary()V

    .line 226
    :cond_0
    return-void
.end method
