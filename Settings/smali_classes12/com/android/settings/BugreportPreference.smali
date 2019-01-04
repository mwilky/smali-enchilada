.class public Lcom/android/settings/BugreportPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "BugreportPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BugreportPreference"


# instance fields
.field private mFullSummary:Landroid/widget/TextView;

.field private mFullTitle:Landroid/widget/CheckedTextView;

.field private mInteractiveSummary:Landroid/widget/TextView;

.field private mInteractiveTitle:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method private takeBugreport(I)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BugreportPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error taking bugreport (bugreportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "BugreportPreference"

    const-string v3, "Taking full bugreport right away"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v3, 0x127

    new-array v4, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-direct {p0, v2}, Lcom/android/settings/BugreportPreference;->takeBugreport(I)V

    goto :goto_0

    :cond_0
    const-string v1, "BugreportPreference"

    const-string v3, "Taking interactive bugreport right away"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v3, 0x126

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/BugreportPreference;->takeBugreport(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0044

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/BugreportPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/BugreportPreference$1;-><init>(Lcom/android/settings/BugreportPreference;)V

    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x10405ae

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
